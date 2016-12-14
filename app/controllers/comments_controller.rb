class CommentsController < ApplicationController
	before_action :authorise
	
	def create
		@fitbit = Fitbit.find params[:fitbit_id]
		@comment = @fitbit.comments.new(comment_params)
		@comment.member_id = @current_member.id #sets the user id FK
		@comment.save #saves the @comment
		#object to the comments table
		
		respond_to do |format|
				format.html {redirect_to @fitbit}
		end
	end
	
	private
	def comment_params #this is the method which whitelists the data fields from the format
		params.require(:comment).permit(:content, :fitbit_id, :member_id, :stars)
	end
end
