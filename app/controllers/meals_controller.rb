class MealsController < ApplicationController
  before_action :require_admin
  before_action :set_meal, only: [:show, :edit, :update, :destroy]

  def require_admin
    if current_user != nil 
      if !current_user.is_admin
        redirect_to root_path
      end
    else
      redirect_to root_path
    end
  end
  # GET /meals
  # GET /meals.json
  def index
    @meals = Meal.all
  end

  # GET /meals/1
  # GET /meals/1.json
  def show
  end

  # GET /meals/new
  def new
    @meal = Meal.new
  end

  # GET /meals/1/edit
  def edit
    
  end

  # POST /meals
  # POST /meals.json
  def create
    @meal = Meal.new(meal_params)
    respond_to do |format|
      if @meal.save
        format.html { redirect_to meals_path, notice: 'Meal was successfully created.' }
        format.json { render :show, status: :created, location: @meal }
      else
        format.html { redirect_to new_meal_path, alert: 'Meal with wrong attributes'}
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meals/1
  # PATCH/PUT /meals/1.json
  def update
    respond_to do |format|
      if @meal.update(meal_params)
        format.html { redirect_to meals_path, notice: 'Meal was successfully updated.' }
        format.json { render :show, status: :ok, location: @meal }
      else
        format.html { render :edit }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
        render 'edit'
      end
    end

  end

  # DELETE /meals/1
  # DELETE /meals/1.json
  def destroy
    @meal.destroy
    respond_to do |format|
      format.html { redirect_to meals_path, notice: 'Meal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal
      @meal = Meal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meal_params
      params.require(:meal).permit(:name, :description, :price, :image, :available, :category_id)

    end

end
