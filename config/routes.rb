Rails.application.routes.draw do
  get 'todolists/new'
  get 'todolists/index' => 'todolists#index'
  root to: 'homes#top'
  post 'todolists' => 'todolists#create'
end
