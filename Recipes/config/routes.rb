Rails.application.routes.draw do

  root 'pages#home'

  get 'pages/home'

  get '/home', to: 'pages#home'
end
