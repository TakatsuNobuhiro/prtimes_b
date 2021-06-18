Rails.application.routes.draw do
  root :to => "releases#index"
  get 'releases/index'
  get 'releases/show'

  get 'companies/index'
  get 'companies/show'
end
