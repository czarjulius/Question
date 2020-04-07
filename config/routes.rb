Rails.application.routes.draw do
  resources :answers
  resources :questions
  root 'home#index'
  get 'home/about'
  post 'questions/questions'
  post 'home/answers' => 'home#temp'
  get '/questions/:id' => 'home#question'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
