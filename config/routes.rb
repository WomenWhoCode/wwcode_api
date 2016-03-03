 Rails.application.routes.draw do
  # devise_for :users
  # get '/auth', to: 'users/registrations#index'
  devise_scope :user do
    get '/auth/sign_up', to: 'users/registrations#new'
    post '/auth', to: 'users/registrations#create'
    get '/auth/:id', to: 'users/registrations#show'
    get '/auth/:id/edit', to: 'users/registrations#edit'
    patch '/auth/:id/', to: 'users/registrations#update'
    delete '/auth/:id', to: 'users/registrations#destroy'
  end


  mount_devise_token_auth_for 'User', at: 'auth', controllers: { sessions: "users/sessions" }
  root to: "welcome#index"

  namespace :api do
    namespace :v1 do
      get '/users/events', to: 'users#user_events'
      resources :users
      resources :personalization_questions
      resources :personalization_answers
      resources :events
      resources :networks
      resources :subscribes
      resources :replies
      resources :user_access_codes
      resources :posts
      resources :profiles
      resources :personalization_details
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
