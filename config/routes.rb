Rails.application.routes.draw do
  # Deviseのルートをカスタマイズ
  devise_for :users, skip: [:registrations]
  
  # ルート設定
  root to: 'events#index'
  
  # 独自のUsersControllerのルート
  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  resources :events do
    member do
      post :join
      delete :leave
    end
  end
  
end
