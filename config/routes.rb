Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :matricreports
    end
  end
	root 'matricreports#index'
  resources :matricreports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
