Rails.application.routes.draw do
  get "seed/run"
  resources :vacancies, only: [ :index, :show, :new, :create ]
  root "vacancies#index"
end
