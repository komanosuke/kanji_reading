Rails.application.routes.draw do
  devise_for :accounts
  get 'hello/login_check'
  
  get '/', to: 'hello#index'

  get 'hello/index'
  get 'hello', to: 'hello#index'

  get 'hello/japanese'

  get 'hello/math'

  get 'hello/social'

  get 'hello/science'

  get 'hello/english'

  get 'kanji_quiz/index'
  get 'kanji_quiz', to: 'kanji_quiz#index'

  get 'kanji_quiz/index2'
  get 'kanji_quiz/index3'
  get 'kanji_quiz/index4'
  get 'kanji_quiz/index5'
  get 'kanji_quiz/index6'

  get 'kanji_quiz/update'
  get 'kanji_quiz/update' , to: 'kanji_quiz#index'

  get 'kanji_quiz/delete'
  get 'kanji_quiz/delete' , to: 'kanji_quiz#index'

  get 'collections/index'
  get 'collections', to: 'collections#index'


  
  devise_scope :account do
    get '/accounts/sign_out' => 'devise/sessions#destroy'
  end

end