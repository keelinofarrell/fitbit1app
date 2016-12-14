class FitbitsController < ApplicationController
  before_action :set_fitbit, only: [:show, :edit, :update, :destroy]
   before_action :authorise, :only => [:new, :create, :edit, :update, :delete]

  # GET /fitbits
  # GET /fitbits.json
  def index
    @fitbits = Fitbit.all
  end

  # GET /fitbits/1
  # GET /fitbits/1.json
  def show
  end

  # GET /fitbits/new
  def new
    @fitbit = Fitbit.new
  end
  
  def search
	@fitbits = Fitbit.search params[:query]
	unless @fitbits.empty?
		render 'index'
	else 
		flash[:notice] = 'No record matches your search'
		render 'index'
	end
  end

  # GET /fitbits/1/edit
  def edit
  end

  # POST /fitbits
  # POST /fitbits.json
  def create
    @fitbit = Fitbit.new(fitbit_params)

    respond_to do |format|
      if @fitbit.save
        format.html { redirect_to @fitbit, notice: 'Fitbit was successfully created.' }
        format.json { render :show, status: :created, location: @fitbit }
      else
        format.html { render :new }
        format.json { render json: @fitbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fitbits/1
  # PATCH/PUT /fitbits/1.json
  def update
    respond_to do |format|
      if @fitbit.update(fitbit_params)
        format.html { redirect_to @fitbit, notice: 'Fitbit was successfully updated.' }
        format.json { render :show, status: :ok, location: @fitbit }
      else
        format.html { render :edit }
        format.json { render json: @fitbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fitbits/1
  # DELETE /fitbits/1.json
  def destroy
    @fitbit.destroy
    respond_to do |format|
      format.html { redirect_to fitbits_url, notice: 'Fitbit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fitbit
      @fitbit = Fitbit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fitbit_params
      params.require(:fitbit).permit(:name, :picture, :battery_life_in_hours, :colour, :display)
    end
end
