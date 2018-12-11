module ApplicationHelper

	def current_order
		if !current_user.nil?
		  	if !current_user.orders.last.nil?
		  		return current_user.orders.last
		  	# elsif !session[:order_id].nil?
		  	# 	current_user.orders.last=Order.find(session[:order_id])
		  	else 
				Order.create(user_id: current_user.id)
			end
		else
			if !session[:order_id].nil?
				Order.find(session[:order_id])
			else
				Order.new
			end
		end
	end
end