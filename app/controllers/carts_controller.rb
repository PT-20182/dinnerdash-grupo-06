class CartsController < ApplicationController
	def show
		@order_items = current_order.order_items
		if !current_user.nil?
			@orders = current_user.orders
		end
	end
	def create
		order=current_order
        user=current_user
        order.user_id=user.id
        order.save!
		session[:order_id]=Order.new.id
	end


	
	 
end