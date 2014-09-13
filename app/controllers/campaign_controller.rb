class CampaignController < ApplicationController
  
  before_filter :get_campaign, except: [ :new, :create ]
  before_filter :check_user,   except: [ :new, :create, :index, :donate, :donation_success ]
  
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
