Rails.application.routes.draw do
  root :to => "companies#index"

  get 'companies/index'
  get 'companies/show'
end
