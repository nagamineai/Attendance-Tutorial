Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'

  # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users do
    member do
      get 'edit_basic_info'
      patch 'update_basic_info'
      get'attendances/edit_one_month'#追加
      patch'attendances/update_one_month'#追加の追加
    end
    resources :attendances, only: :update # この行を追加します。
  end
end