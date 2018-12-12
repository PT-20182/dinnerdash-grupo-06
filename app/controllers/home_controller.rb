class HomeController < ApplicationController
    def index 
        @categories = Category.all
        @meals = Meal.all
        @order = current_order.order_items
        @order_item = current_order.order_items.new
    end
    
    def show
        @meals = Meal.all
        @order_item = current_order.order_items.new
    end
end
