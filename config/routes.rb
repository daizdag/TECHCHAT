Rails.application.routes.draw do
  root to: 'questions#index'
  resources :questions, only: [:index, :new, :create, :show] do
    resources :comments, only: :create
    # questionsに対してコメントをするという考えなので小要素になる
  end 
end
