Rails.application.routes.draw do
  resources :users
  resources :rubric_aspects
  resources :rubrics
  resources :plan_aspects
  resources :plans
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
