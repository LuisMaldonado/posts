Posts::Application.routes.draw do
  get '/posts/filtrar' => 'posts#filtrar'
  get '/posts/dislike/:id' => 'posts#dislike'
  get '/posts/dislike2/:id' => 'posts#dislike2'
  get '/posts/search' => 'posts#search'
  get '/posts/report' => 'posts#report'
  get '/posts/comment/save/:id' => 'posts#save'
  get '/posts/like2/:id' => 'posts#like2'
  get '/posts/comment/:id' => 'posts#comment'
  get '/posts/like/:id' => 'posts#like'
  get '/posts/admi' => 'posts#indexadmi'
  get '/posts/admi/new' => 'posts#new'
  root 'posts#index'
  resources :posts

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
