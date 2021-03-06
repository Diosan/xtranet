Unified::Application.routes.draw do

  resources :documents

  resources :promotions

  resources :promotion_payment_statuses

  resources :promotion_categories

  resources :events

  resources :gallery_images

  resources :galleries do
    resources :gallery_images
  end

  # You can have the root of your site routed with "root"
  root 'spree/home#index'

  resources :team_members

  resources :categories

  resources :documents

  devise_for :users
  #, :controllers => { :registrations => "registrations" }
  
  #devise_scope :user do
     #get "/login" => "devise/sessions#new"
     #get "/logout" => "devise/sessions#destroy"
  #end
  
  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, :at => '/shop'

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  comfy_route :cms_admin, :path => '/cms-admin'

  # Make sure this routeset is defined last
  comfy_route :cms, :path => '/cms', :sitemap => false

  resources :posts
  
  Spree::Core::Engine.routes.prepend do
    resources :taxons
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  

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
