Rails.application.routes.draw do

  #campaign
  get '/campaign/new', :to => "campaign#new"
  post '/campaign/new', :to => "campaign#create"
  get '/campaign/details/:campaign_id', :to => "campaign#details"
  post '/campaign/edit/:campaign_id', :to => "campaign#edit"
  get '/campaign/:campaign_id', :to => "campaign#index"
  get '/campaign/donate/:campaign_id', :to => "campaign#donate"
  post '/campaign/donate/:campaign_id', :to => "campaign#make_donation"
  get '/campaign/donation_success/:campaign_id/:payment_id', :to => "campaign#donation_success"

  #user
  match '/login', :to => "user#login", :via => [:get,:post]
  get '/logout', :to => "user#logout"
  get '/user/register', :to => "user#register"
  post '/user/register', :to => "user#create"
  get '/user/view/:user_id', :to => "user#view"

  #welcome
  get 'welcome/index'
  get 'welcome/about'
  
  root 'welcome#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
