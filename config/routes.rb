Rails.application.routes.draw do
  devise_for :users do
  	get '/user/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homes#top'
  get 'homes/about'

  resources :users
  post 'roomtitles' => 'users#create'

  resources :rooms
end
