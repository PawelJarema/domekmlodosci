Rails.application.routes.draw do
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'

  get '/admin', to: redirect('/editor/informacje')

  post 'editor/save_photo' => 'editor#save_photo'
  post 'editor/delete_photo/:id' => 'editor#delete_photo'

  get 'editor/informacje'
  post 'editor/informacje' => 'editor#save'

  get 'editor/cennik'
  post 'editor/cennik' => 'editor#save'

  get 'editor/dojazd'
  post 'editor/dojazd' => 'editor#save'

  root 'static_pages#info'

  get 'static_pages/info'

  get 'static_pages/prices'

  get 'static_pages/map'

  get 'static_pages/contact'
  post 'static_pages/send_mail' => 'static_pages#send_mail'


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
