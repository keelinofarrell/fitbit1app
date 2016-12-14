class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy, :ship]
  before_action :authorise

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  def shipstatus
	@orders = Order.where(shipping: false)
  end

  def ship 
		@order.shipping = true
		@order.save
		redirect_to orders_path
	end
  

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end
  
  def allorder_total
	Order.sum(:total)
  end
  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
	@order.add_lineitems_from_cart(current_cart)
	@order.customer_id = @current_member.id
	@order.total_price(@order)

    respond_to do |format|
      if @order.save
		##send confirmation email - put loop of lineitems in email
		Cart.destroy(session[:cart_id])
		session[:cart_id] = nil
			format.html { redirect_to root_path, notice: 'Thank you for your order!' }
			format.json { render :show, status: :created, location: @order }
      else
		@cart = current_cart
			format.html { render :new }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:customer_id, :paymethod, :total)
    end
end
