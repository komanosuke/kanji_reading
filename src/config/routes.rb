Rails.application.routes.draw do
  get 'hello/index'
  get 'hello', to: 'hello#index'

  get 'kanji_quiz/kanji_quiz'
  get 'kanji_quiz', to: 'kanji_quiz#kanji_quiz'

  get 'kanji_quiz/create'
  get 'kanji_quiz/create' , to: 'kanji_quiz#kanji_quiz'

  get 'kanji_quiz/update'
  get 'kanji_quiz/update' , to: 'kanji_quiz#kanji_quiz'

  get 'kanji_quiz/delete'
  get 'kanji_quiz/delete' , to: 'kanji_quiz#kanji_quiz'

end
