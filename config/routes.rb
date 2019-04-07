Rails.application.routes.draw do
  resources :english_words
  root 'home#index'
  get 'mypage/index'
end
