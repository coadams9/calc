Rails.application.routes.draw do

  resources :calcs, only: [:new]

  post '/add', to: 'calcs#add'
  post '/subtract', to: 'calcs#subtract'
  post '/multiply', to: 'calcs#multiply'
  post '/divide', to: 'calcs#divide'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
