Rails.application.routes.draw do
  get 'welcome/index'
	root 'welcome#index' #root sets the 'main' webpage as /welcome/index. index is a method thats why its welcome#index
	get 'tasks/index'
  get 'tasks/new'
	resources :users
	get 'signup', to: 'users#new'
	resources :tasks #this creates routes between app and the tasks model
	resources :sessions, only: [:new, :create, :destroy]
	get 'login', to: 'sessions#new'
	get 'logout', to: 'sessions#destroy'
	get 'sessions', to: 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
