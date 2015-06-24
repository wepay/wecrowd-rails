module Api
  class LoginController < ApplicationController

    #the create function corresponds to the HTTP POST request. This function returns the authentication token when the user email and password are verified.
    def create
      #create local variables which store the user_email and user_password entered as in the parameters for the /login API call
      user_email = params[:user_email]
      user_password = params[:password]

      #check to see if the user is authenticated via their entered email and password
      is_user_authenticated = User.authenticate(user_email, user_password)
      #if the user is authenticated, then return the token. The merchant will need this token as a parameter to view his/her campaigns
      if(is_user_authenticated)
        user = User.find_by_email(user_email)
        user_id = user.id
        user_hash = user.hash
        token = Digest::SHA2.hexdigest(user.hash)
        retIDandToken = {"user_id"=> user_id ,"token" => token}
        render json: retIDandToken

      else
        render json: password_auth_error, :status => 400
      end
    end

    def index
      render json: only_post_error, :status => 404
    end

    def new
      render json: only_post_error, :status => 404
    end

    def show
      render json: only_post_error, :status => 404
    end

    def edit
      render json: only_post_error, :status => 404
    end

    def update
      render json: only_post_error, :status => 404
    end

    def destroy
      render json: only_post_error, :status => 404
    end

    private
    def login_params
      params.require(:user).permit(:user_email, :password)
    end



  end
end