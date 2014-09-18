Rails.application.routes.draw do
  #
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
 
 # resources :users,:only =>:index
  #devise_for :users
 devise_for :users,:path => "admin",:controllers => {:sessions => 'sessions',:registrations => 'users'}
  # devise_scope :admin do
    
  #   #get "admin/admins", :to => "users#index"
  # end


#devise_for :admins,:path => "siri-admin", :controllers => {:sessions => 'sessions',:registrations => 'admins'}
    #devise_scope :user do
 #    get "admin/admins", :to => "users#index"
   #end
 resources :users,:path=>"admin"
 resources :homes
 resources :gadgets
 resources :homeone

 root 'homeone#index'
 # get '*path', to: 'homeone#index'
 #devise_for :admins, :controllers => {:sessions => 'sessions',:registrations => 'admins'}
 # devise_scope :user do
 #    get "admin/admins", :to => "users#index"
 #  end
 #resources :users
  # You can have the root of your site routed with "root"
    #root 'users#index'


namespace :api do
   namespace :v2 do
     resources :gadgets
  end
end
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
    # root to: "homes#index"
  
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
