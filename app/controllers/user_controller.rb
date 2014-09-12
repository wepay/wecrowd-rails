class UserController < ApplicationController
  
  before_filter :check_user, :except => [ :register, :create, :login, :logout]
  
  def index
  end

  def view
    @user = User.find(params[:user_id])
  end

  def edit
  end

  def login
    @redirect = params[:redirect]
    if request.post?
      @user = User.authenticate(params[:email], params[:password])
      if !@user
        error("Invalid email/password combination")
        return redirect_to("/login")
      else
        sign_in(@user)
        if params[:redirect] && session[:redirects]
          url = session[:redirects][params[:redirect]] || "/user/view/#{@user.id}"
          return redirect_to(url)
        end
        return redirect_to("/user/view/#{@user.id}")
      end
    end
  end

  def logout
    if signed_in?
      sign_out
      message("You are now logged out")
    end
    redirect_to("/")
  end
  
  def register
    @user = User.new
  end

  def create
    if request.post?
      @user = User.new({:name => params[:name], :email => params[:email]})
      @user.password = params[:password]
      if @user.valid? && @user.save
        sign_in(@user)
        message("Thanks for registering, #{@user.name}")
        redirect_to("/user/view/#{@user.id}")
      else
        error(@user.errors.full_messages)
        redirect_to("/user/register")
      end
    end
  end
  
  private
  
  def check_user
    if !params[:user_id] || params[:user_id].empty?
      raise "No user_id passed for action that requires user"
    end
    @user = authenticate(params[:user_id], request.path, params[:user_hash])
  end
end
