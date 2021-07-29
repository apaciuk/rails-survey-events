class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create, :destroy]
 
    def user_params
    params.require(:user).permit(:name, :email, :user_id )
    end
end