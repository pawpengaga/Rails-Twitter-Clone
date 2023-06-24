Rails.application.routes.draw do
  resources :tweets do
    collection do
      get 'search'
    end
  end

  root 'tweets#index'
end
