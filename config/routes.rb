Rails.application.routes.draw do


root 'categories#index'

#
get 'categories/:name' => 'categories#show', as: :category
#
#
get 'categories/:name/items/:id' => 'items#show', as: :category_item

get 'categories/:name/items/:id/edit' => 'items#edit', as: :edit_category_item

get 'static_pages/about'=> "static_pages#about"

get "items/new" => "items#new", as: :new_item

post "/items" => "items#create"



get 'items/:id' => "items#show", as: :item

patch 'items/:id' => "items#update"

delete 'items/:id' => "items#destroy"



get "users"=> "users#index"
post "/users" => "users#create"
get "users/new"=> "users#new", as: :new_user
get "users/:id/edit"=> "users#edit", as: :edit_user



get "users/:id"=> "users#show", as: :user

patch "users/:id"=> "users#update"

delete "/users/:id" => "users#destroy"


get '/login'     => 'sessions#new'
post '/login'    => 'sessions#create'
delete '/logout' => 'sessions#destroy'

 get '/search' => "items#search", as: :search_items


 # resources :items, :defaults => { :format => 'json' }

# resources :items format JSON

# resources :items do
#   collection do
#   get 'search'
#   end
# end

# DELETE /categories/:category_name/items/:item_id(.:format)      items#destroy


#
resources :categories, :name => { :format => 'json' } do
  resources :items, :item_id => { :format => 'json' }
end

  #
  #
  #

  #
  #

  #
  #
  #

  #
  #
  # get 'category/:category_name/item/:id' => "items#show", as: :category_items
  #
  # get 'category/:category_name/item/:id/edit' => "items#edit"
  #
  # patch 'items/:id' => "items#update"







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
