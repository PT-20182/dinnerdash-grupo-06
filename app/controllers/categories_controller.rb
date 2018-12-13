class CategoriesController < ApplicationController
  before_action :require_admin

  def require_admin
    if current_user != nil
      if !current_user.is_admin
        redirect_to root_path
      end
    else
      redirect_to root_path
    end
  end

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)

    redirect_to categories_path
  end

  def create
    category = Category.create(category_params)

    redirect_to categories_path
  end

  def destroy
    @category = Category.find(params[:id])
    @category.meals.each do |f|
      f.destroy
    end
    @category.destroy

    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
