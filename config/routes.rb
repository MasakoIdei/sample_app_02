Rails.application.routes.draw do
  get 'todolists/new'
  root to: 'homes#top'
  get 'todolists/index' => 'todolists#index'
  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  post 'todolists' => 'todolists#create'
end
