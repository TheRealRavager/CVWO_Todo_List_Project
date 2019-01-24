Rails.application.routes.draw do
  get 'welcome/index'
	root 'welcome#index' #root sets the 'main' webpage as /welcome/index. index is a method thats why its welcome#index
	get 'tasks/index'
  get 'tasks/new'
	get 'log_in', to: 'sessions#new'
	get 'log_out', to: 'sessions#destroy'
	resources :users
	get 'sign_up', to: 'users#new'
	resources :tasks #this creates routes between app and the tasks model
	resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
