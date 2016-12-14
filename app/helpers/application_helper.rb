module ApplicationHelper


	def signed_in?
		if session[:member_id].nil?
			return
		else
			@current_member = Member.find_by_id(session[:member_id])
		end
	end
	
	def euro(price)
		number_to_currency(price, :unit => "€")
	end
end


