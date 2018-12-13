class OrdersController < ApplicationController
  def finish
    @categories = Category.all
    @meals = Meal.all
    @order_item = current_order.order_items
    if !current_user.nil?
    @orders = current_user.orders
    end
  end

  def last
    @categories = Category.all
    @meals = Meal.all
    @order_item = current_order.order_items
    if !current_user.nil?
    @orders = current_user.orders
    end
  end
end
