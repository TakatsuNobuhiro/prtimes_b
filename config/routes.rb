Rails.application.routes.draw do
  get 'releases/index'
  get 'releases/show'
  root :to => "companies#index"

  get 'companies/index'
  get 'companies/show'
end
