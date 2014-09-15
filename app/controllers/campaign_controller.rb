class CampaignController < ApplicationController
  
  before_filter :get_campaign, except: [ :new, :create ]
  before_filter :check_user,   except: [ :new, :create, :index, :donate, :make_donation, :donation_success ]
  
  def index
  end

  def new
    @campaign = Campaign.new
  end
  
  def create
    if signed_in?
      @user = current_user
    else
      @user = User.new({:name => params[:user_name], :email => params[:user_email]})
      @user.password = params[:user_password]
      if @user.valid? && @user.save
        sign_in(@user)
      else
        error(@user.errors.full_messages)
        return redirect_to("/campaign/new")
      end
    end
    @campaign = Campaign.new({
      user_id: @user.id,
      name: params[:campaign_name],
      description: params[:campaign_description],
      goal: params[:campaign_goal],
      account_type: params[:account_type]
    })
    if @campaign.valid? && @campaign.save
      @user.register_on_wepay(request.ip, request.env['HTTP_USER_AGENT'])
      @user.create_wepay_account
      message("Your campaign has been created successfully!")
      redirect_to("/campaign/details/#{@campaign.id}")
    else
      error(@campaign.errors.full_messages)
      return redirect_to("/campaign/new")
    end
  end

  def details
  end

  def edit
    if @campaign.update_attributes({
      name: params[:campaign_name],
      description: params[:campaign_description],
      goal: params[:campaign_goal],
      account_type: params[:account_type]
    })
      message("Your campaign has been edited successfully!")
    else
      error(@campaign.errors.full_messages)
    end
    redirect_to("/campaign/details/#{@campaign.id}")
  end

  def donate
    params[:user_name] ||= "Test User"
    params[:user_email] ||= "test@example.com"
    params[:cc_number] ||= "5496198584584769"
    params[:cvv] ||= "123"
    params[:expiration_month] ||= "11"
    params[:expiration_year] ||= "2015"
    params[:zip] ||= "94025"
  end
  
  def make_donation
    @user = User.find_by_email(params[:user_email])
    if !@user
      @user = User.new({
        name: params[:user_name],
        email: params[:user_email]
      })
      unless @user.valid? && @user.save
        error(@user.errors.full_messages)
        return redirect_to("/campaign/donate/#{@campaign.id}")
      end
    end
    
    @payment = Payment.create(params[:credit_card_id], params[:amount], @user, @campaign)
    if @payment.valid? && @payment.save
      message("Donation Made!")
      redirect_to("/campaign/#{@campaign.id}/")
    else
      error(@payment.errors.full_messages)
      redirect_to("/campaign/donate/#{@campaign.id}")
    end
  end

  def donation_success
  end
  
  private
  
  def get_campaign
    @campaign = Campaign.find(params[:campaign_id])
  end
  
  def check_user
    @user = authenticate(@campaign.user_id, request.path, nil)
  end
end
