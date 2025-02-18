Rails.application.routes.draw do
  root "vacancies#index"
  resources :vacancies, only: [ :index, :show, :new, :create ]
end
