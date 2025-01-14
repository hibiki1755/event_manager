Rails.application.routes.draw do
  get "events/index"
  get "events/show"
  get "events/new"
  get "events/edit"
  root 'events#index' # ルートページをイベント一覧に設定（例）

  devise_for :users  # Deviseによるユーザールーティングを追加

  resources :events # イベント管理用のルーティング
end
