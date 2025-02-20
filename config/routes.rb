Rails.application.routes.draw do
  resources :vacancies, only: [ :index, :show, :new, :create ]
  root "vacancies#index"
end
