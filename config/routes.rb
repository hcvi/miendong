Rails.application.routes.draw do

  get 'products/index'

  get 'products/:slug' => 'products#show', as: 'product'

  get 'admin' => 'admin/companies#index'

  namespace :admin do
    resources :companies
    resources :services
    resources :contacts
    resources :blogs
    resources :products
    resources :pictures
  end

  get '/contact' => "contact#index", as: 'contact'
  post '/contact' => "contact#create"
  get '/blogs' => "blogs#index", as: 'blog'

  get '/services' => "services#index", as: 'services'

  get '/products' => "products#index", as: 'products'
  get '/designs' => "designs#index", as: 'designs'

  get '/about' => "about#index", as: 'about'
  root 'home#index'

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
