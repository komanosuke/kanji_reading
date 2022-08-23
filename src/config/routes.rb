Rails.application.routes.draw do
  
  devise_for :accounts
  get 'hello/login_check'
  
  get '/', to: 'hello#index'

  get 'hello/index'
  get 'hello', to: 'hello#index'

  get 'kanji_quiz/index'
  get 'kanji_quiz', to: 'kanji_quiz#index'

  get 'kanji_quiz/update'
  get 'kanji_quiz/update' , to: 'kanji_quiz#kanji_quiz'

  get 'kanji_quiz/delete'
  get 'kanji_quiz/delete' , to: 'kanji_quiz#kanji_quiz'

  get 'collections/index'
  get 'collections', to: 'collections#index'

  

  
  #devise_scope :account do
    #get '/accounts/sign_out' => 'devise/sessions#destroy'
  #end

end