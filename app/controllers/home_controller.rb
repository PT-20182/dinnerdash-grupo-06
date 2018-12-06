class HomeController < ApplicationController
    def index 
        @categories = Category.all
        @meals = Meal.all
    end
end
