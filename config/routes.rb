Rails.application.routes.draw do

  root :to => "home#index"

  devise_for :users

  delete '/assets/:id/:asset_data_id' , to: 'assets#destroy_asset_data'

  resources :users  , except: [ :create , :new ] do
    collection do
      get 'index'
    end
  end

  resources :sub_categories
  
  resources :categories do
    member do
      get 'sub_categories'
    end
  end
  
  resources :descriptors
  
  resources :assets 

  resources :asset_data
  
  match 'offers/choose_assets' => 'offers#choose_assets', :via => :post

  resources :offers do
    member do
      #post 'choose_assets'
      get 'show_received'
      put 'accept'
      put 'reject'
    end

    collection do
      get 'received_offers'
    end
  end



  
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
