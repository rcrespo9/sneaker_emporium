SneakerEmporium::Application.routes.draw do
  resources :brands
  resources :sneakers
  resources :stores

  root :to => 'welcome#index'
end
