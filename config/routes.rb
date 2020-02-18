Rails.application.routes.draw do
  resources :course_instructors
  resources :program_sessions
  resources :answers
  resources :choices
  resources :questions
  resources :papers
  resources :programs
  resources :sessions
  resources :instructors
  resources :exams
  resources :courses
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: "welcome#index"
end
