module Api
  class UsersController < ApplicationController

    def create

      #create local variables which store the user_id and token entered as in the parameters for the /users API call
      user_id = params[:user_id]
      user_token = params[:token]

      #authenticate the user_id and the user_token
      is_auth = User.authenticate_by_token(user_id, user_token)


      #if the user is authenticated, then the user will be able to view their campaigns
      if(is_auth)

        user = User.find_by_id(user_id)
        render json: user.campaigns

      end
    end


    private
    def users_params
      params.require(:user).permit(:user_id, :token)
    end

  end
end