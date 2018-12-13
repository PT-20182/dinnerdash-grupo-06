class BackofficeOrdersController < ApplicationController
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
    @orders = Order.all
    @users = User.all
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update_attributes(order_update_params)
    redirect_to backoffice_orders_index_path
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
        format.html { redirect_to backoffice_orders_index_path}
        format.js
    end
  end

  private

  def order_update_params
    params.require(:order).permit(:tax, :user_id)
  end

end
