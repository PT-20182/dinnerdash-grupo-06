module ApplicationHelper

	def current_order
		# if !current_user.nil?
		#   	if !current_user.orders.last.nil?
		#   		return current_user.orders.last
		  	
		#   	else 
		# 		Order.create(user_id: current_user.id)
		# 	end
		# else
			
			if !session[:order_id].nil?
				Order.find(session[:order_id])
			else
				Order.new
			end
			# end
	end
		
			def change_order
				ord=Order.new
				session[:order_id]=ord.id
				root_path
			end
		
	def final_order
		order=current_order
		user=current_user
		order.user_id=user.id
		order.save!
		change_order
		root_path
	end
end