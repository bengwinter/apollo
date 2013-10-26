    Apollo::Application.routes.draw do
  root to: 'home#index'
  

  devise_for :users
  
 
  # get '/top_played' => 'autolists#top_played', as: 'top_played'
  # get '/recent_added' => 'autolists#recent_added', as: 'recent_added'
  # get '/recent_played' => 'autolists#recent_played', as: 'recent_played'
  get '/genres/:id' => 'playlists#genrelist', as: 'genre_page'
  # get '/artists/:id' => 'autolists#artist', as: 'artist_page'

  post '/favorite/add' => 'songs#add_favorite', as: 'favorite_song'
  post '/favorite/remove' => 'songs#remove_favorite', as: 'remove_favorite_song'
  
  

  resources :playlists do
    resources :songs
    delete 'songs/:song_id' => 'songs#delete', as: 'delete_song_from_playlist'
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
