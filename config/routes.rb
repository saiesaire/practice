Rails.application.routes.draw do
  root to: "voice#index"

  resources :voice
  post 'voice/:id' => 'voice#create'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
