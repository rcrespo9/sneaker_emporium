SneakerEmporium::Application.routes.draw do
  resources :brands
  post '/brands/:id/destroy' => 'brands#destroy', as: 'brand_destroy'
  resources :sneakers
  post '/sneakers/:id/destroy' => 'sneakers#destroy', as: 'sneaker_destroy'
  resources :stores
  post '/stores/:id/destroy' => 'stores#destroy', as: 'store_destroy'

  root :to => 'welcome#index'
end
