Rails.application.routes.draw do
  #top
  root 'posts#index'

  post 'posts/create'=>'posts#create',as: 'posts'
  #login
  get 'sessions/new'=>'sessions#new',as: 'login'
  post 'sessions/create'=>'sessions#create',as: 'sessions'
  delete 'logout' =>'sessions#destroy'

  #会員登録
  get 'signup'=>'users#new',as: 'signup'
  post 'users/create'=>'users#create',as: 'users'
 #マイページ
  get 'mypage'=>'users#mypage', as: 'mypage'
 # ユーザ一覧
  get 'users'=>'users#index',as:'users_list'
  get 'users/:id'=>'users#show'
  get 'posts/:id'=>'posts#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
