Rails.application.routes.draw do
  resources :articles
  devise_for :users
  root to: 'homes#index'
  get '/api' => redirect('/swagger/dist/index.html?url=/apidocs/api-docs.json')
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :users do
        collection do
          post :log_in
        end
      end
    end
  end
end
