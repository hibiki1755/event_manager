Rails.application.routes.draw do
  # Deviseのルートをカスタマイズ
  devise_for :users, skip: [:registrations]
  
  # 独自のUsersControllerのルート
  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  # 他のリソース
  resources :events

  # ルート設定
  root to: 'events#index'
end
