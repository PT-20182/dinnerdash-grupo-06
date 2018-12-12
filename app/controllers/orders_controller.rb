class OrdersController < ApplicationController
  def finish
    @categories = Category.all
    @meals = Meal.all
    @order = current_user.orders
    @order_item = current_order.order_items
  end

  def last
  end
end
