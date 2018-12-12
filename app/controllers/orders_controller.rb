class OrdersController < ApplicationController
  def finish
    @categories = Category.all
    @meals = Meal.all
    @order = current_order.order_items
    @order_item = current_order.order_items.new
  end

  def last
  end
end
