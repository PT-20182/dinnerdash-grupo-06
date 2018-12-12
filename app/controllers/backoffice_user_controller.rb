class BackofficeUserController < ApplicationController
    before_action :require_admin

    def require_admin
        if !current_user.is_admin
            redirect_to root_path
        end
    end
    
    def index
        @users = User.all
    end

    def edit
        @user = User.find(params[:id])
    end
    
    def update
        @user = User.find(params[:id])
        @user.update_attributes(user_update_params)
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy

        respond_to do |format|
            format.html { redirect_to backoffice_user_index_path}
            format.js
        end
    end

    private

    def user_update_params
      params.require(:user).permit(:name, :email, :is_admin)
    end

end
