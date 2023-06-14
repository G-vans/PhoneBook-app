Rails.application.routes.draw do
  resources :contacts do
    collection do
      delete 'destroy_multiple'
    end
  end  
  root to: 'home#index'
end
