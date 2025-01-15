# Event Manager
Railsで構築したイベント管理アプリ

Event Managerは、ユーザーがイベントを作成し、参加管理を行うことができるRailsアプリケーションです。このアプリケーションは、イベント参加、ユーザー認証、動的なイベントリストなどの基本機能を備えています。

## 目次

- [特徴](#特徴)
- [使用技術](#使用技術)
- [セットアップ](#セットアップ)
- [機能](#機能)
- [開発の背景](#開発の背景)
- [画面構成](#画面構成)

---

## 特徴

- **ユーザー認証**: Deviseを使用したログイン/ログアウト機能
- **イベント管理**: イベントの作成、編集、削除
- **イベント参加機能**: ユーザーがイベントに参加または退出可能
- **レスポンシブデザイン**: Bootstrapを使用した直感的なUI
- **セキュリティ対策**: CSRF保護および安全なセッション管理

---

## 使用技術

- **フレームワーク**: Ruby on Rails 7
- **フロントエンド**: Bootstrap, HAML
- **データベース**: SQLite (開発環境)
- **認証**: Devise
- **バージョン管理**: Git

---

## セットアップ

1. リポジトリをクローン:
    
    ```bash
    git clone https://github.com/hibiki1755/event_manager.git
    
    ```
    
2. 必要なGemをインストール:
    
    ```bash
    bundle install
    
    ```
    
3. データベースをセットアップ:
    
    ```bash
    rails db:setup
    
    ```
    
4. サーバーを起動:
    
    ```bash
    rails server
    
    ```
    
ブラウザで `http://localhost:3000` にアクセスしてください。

---

## 機能

- **ユーザー管理**
    - 新規登録、ログイン、ログアウト
    - プロフィールの編集
- **イベント管理**
    - イベントの作成、編集、削除
    - ユーザーのイベント参加管理
- **参加者リスト表示**
    - イベントごとに参加者リストを動的に表示
- **レスポンシブ対応**
    - モバイルフレンドリーなUI

---

## 開発の背景

このプロジェクトは、Ruby on Railsの学習とポートフォリオ作成を目的として構築されました。以下の点を重視しました:

1. 実用的な機能の実装
2. 開発中に直面した問題の解決能力を示す

---

## 画面構成

以下にアプリケーションの主要な画面を示します。

1. **ログイン画面**  
   ![ログイン画面画像](https://github.com/hibiki1755/event_manager/blob/readme/img/sign_in.png?raw=true)

2. **サインアップ画面**  
   ![サインアップ画面画像](https://github.com/hibiki1755/event_manager/blob/readme/img/sign_up.png?raw=true)

3. **イベント一覧画面**  
   ![イベント一覧画面画像](https://github.com/hibiki1755/event_manager/blob/readme/img/events.png?raw=true)

4. **イベント作成画面**  
   ![イベント作成画面画像](https://github.com/hibiki1755/event_manager/blob/readme/img/events_new.png?raw=true)

5. **イベント詳細画面**  
   ![イベント詳細画面画像](https://github.com/hibiki1755/event_manager/blob/readme/img/events_show.png?raw=true)

6. **イベント編集画面**  
   ![イベント編集画面画像](https://github.com/hibiki1755/event_manager/blob/readme/img/events_edit.png?raw=true)

7. **ユーザー一覧画面**  
   ![ユーザー一覧画像](https://github.com/hibiki1755/event_manager/blob/readme/img/users.png?raw=true)

8. **ユーザー作成画面**  
   ![ユーザー作成画像](https://github.com/hibiki1755/event_manager/blob/readme/img/users_new.png?raw=true)

9. **ユーザー詳細画面**  
   ![ユーザー詳細画像](https://github.com/hibiki1755/event_manager/blob/readme/img/users_show.png?raw=true)

10. **ユーザー編集画面**  
    ![ユーザー編集画面画像](https://github.com/hibiki1755/event_manager/blob/readme/img/users_edit.png?raw=true)

---

詳細な情報については、[お問い合わせ](mailto:44da.1biki@gmail.com)ください。