Lapapayanetwork::Application.routes.draw do
  resources :solutions

  resources :productos

  resources :pedidos

  resources :etapas

  get "pages/civismo"
  get "pages/verduras"
  resources :canvas_financiero_ingresos

  resources :canvas_financiero_costos

  resources :canvas_lado_derechos

  resources :canvas_lado_izquierdos

  resources :canvas

  get 'tags/:tag', to: 'dreams#index', as: :tag
  devise_for :admins
  get "pages/patrocinios"
  get "pages/queesmilsuenos"
  get "pages/milsuenos"
  get "pages/meetrico"
  resources :wikis
  
  get "wikis/1"
  get "pages/areasinteres"
  get "pages/dedondenacio"
  get "pages/comofunciona"
  get "page/challenges"
  resources :microposts

  get "pages/enqmebeneficio"
  get "pages/quienesson"
  get "pages/q"
  get "pages/porq"
  get "activities/index"
  get "user/sign_up"
  resources :dreams do
    collection { post :import }
  end
  get 'dreams/:id', to: 'dreams#show', as: 'dream_show'
  resources :activities

  devise_for :users
  root "dreams#index"
  get "about" => "pages#about"
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

