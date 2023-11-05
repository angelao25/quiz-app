Rails.application.routes.draw do
  get 'quiz_submissions/create'
  get 'quiz_submissions/show'
  devise_for :users

  resources :quizzes do
    resources :questions
    # post 'submit', to: 'quiz_submissions#create'
    resources :quiz_submissions, only: [:show, :create], as: 'submissions'
  end

  root 'quizzes#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
