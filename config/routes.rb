Rails.application.routes.draw do
  get 'pages/Home'
  get 'pages/About'
  get 'pages/Contact'
  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
