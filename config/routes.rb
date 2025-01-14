Rails.application.routes.draw do
  # Deviseの標準ルート（登録機能をスキップ）
  devise_for :users

  # カスタムログアウトルート
  devise_scope :user do
    delete 'logout', to: 'devise/sessions#destroy', as: :logout
  end

  # ルートパス
  root to: 'events#index'

  # ユーザー関連のルート
  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  # イベント関連のルート
  resources :events do
    member do
      post :join
      delete :leave
    end
  end
end
