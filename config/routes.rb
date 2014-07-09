RailsApp::Application.routes.draw do
  resources :equipment, only: [:index, :show]
  resources :applications, only: [:index, :show]
  resources :contacts, only: [:index, :show]
  resources :companies
  resources :products, only: [:index, :show]
  match 'products/valve/:id' => "products#valve", as: 'product_valve'

  devise_for :admins, only: [:session], :path => '/admin', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  
  get "/company" => "Companies#show", as: 'front_company'

  controller :front do
    get "/home" => :index
    get "/products" => :product, as: 'front_product'
    get "/intmarkets" => :market, as: 'front_market'
    get "/equipments" => :equipment, as: 'front_equipment'
    get "/contactus" => :contact, as: 'front_contact'
    get "/admin" => :admin, as: 'front_admin'
    get "/application" => :application, as:'front_application'
    get '/userlogout' => :userlogout, as: 'front_userlogout'
  end
  namespace 'admin' do
    resources :activities
    resources :news
    resources :slides
    resources :companies
    resources :products
    match 'products/valve/:id' => "products#valve", as: 'product_valve'
    resources :contacts
    resources :applications
    resources :equipment
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'front#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
