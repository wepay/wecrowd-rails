module Api
  class LoginController < ApplicationController

    def create

      #create local variables which store the user_email and user_password entered as in the parameters for the /login API call
      user_email = params[:user_email]
      user_password = params[:password]
      is_user_authenticated = User.authenticate(user_email, user_password)

      if(is_user_authenticated)
        user = User.find_by_email(user_email)
        user_hash = user.hash
        token = Digest::SHA2.hexdigest(user.hash)
        render json: user
      end

    end

    private
    def login_params
      params.require(:user).permit(:user_email, :password)
    end

  end
end