Rails.application.routes.draw do
  get 'todolists/new'
  root to: 'homes#top'
  get 'todolists/index' => 'todolists#index'
  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  post 'todolists' => 'todolists#create'
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
end
