Rails.application.routes.draw do
  resources :users
  get 'tasks/index'
  get 'tasks/new'
  get 'welcome/index'
	root 'welcome#index' #root sets the 'main' webpage as /welcome/index. index is a method thats why its welcome#index
	resources :tasks #this creates routes between app and the tasks model
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
