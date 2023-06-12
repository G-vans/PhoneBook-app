Rails.application.routes.draw do
  resources :contacts
  root to: 'phonebook#index'
end
