Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # see all
  get 'tasks', to: 'tasks#index'

  # create
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # update
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'

  # details
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # destroy
  delete 'tasks/:id', to: 'tasks#destroy'
end
