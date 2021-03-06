Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: redirect('/requests/')
  get '/requests/', to: 'request#index'
  post '/requests/', to: 'request#create'
  mount ActionCable.server => '/cable'
end
