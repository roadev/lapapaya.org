Lapapayanetwork::Application.routes.draw do
  resources :complices

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
  resources :solutions
  resources :microposts do
    resources :solutions
  end

  get "pages/enqmebeneficio"
  get "pages/quienesson"
  get "pages/q"
  get "pages/porq"
  get "activities/index"
  get "user/sign_up"
  resources :dreams do
    collection { post :import }
    resources :complices
  end
  get 'dreams/:id', to: 'dreams#show', as: 'dream_show'
  resources :activities

  devise_for :users
  root "dreams#index"
  get "about" => "pages#about"
  get "userpanel" => "pages#userpanel"
  get "adminpanel" => "pages#adminpanel"
  get "encuesta" => "encuesta#show", :as => :encuesta
  get "videos" => "videos#show", :as => :videos
end
