Rails.application.routes.draw do
  devise_for :users

  root 'visitors#index'

  resources :students do
    get :subjects
  end

  resources :teachers do
    get :subjects
  end
  resources :payments, only: [:index, :new, :create, :show]

  get 'reports/subjects', to: 'reports#subjects', as: :report_subjects

end
