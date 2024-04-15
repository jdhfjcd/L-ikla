Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'konzatus#index'

  get 'konzatus' => 'konzatus#index'
  get 'konzatus/index' => 'konzatus#index'
  get 'konzatus/new/:gakusyoku' => 'konzatus#new'
  post 'konzatus' => 'konzatus#create'

  get 'konzatus/hitigayatudohi' => 'konzatus#hitigayatudohi'
  get 'konzatus/hitigayaforest' => 'konzatus#hitigayaforest'
  get 'konzatus/hitigayafujimi' => 'konzatus#hitigayafujimi'
  get 'konzatus/hitigayastafu' => 'konzatus#hitigayastafu'
  get 'konzatus/hitigayatamati' => 'konzatus#hitigayatamati'

  get 'konzatus/htamasougou' => 'konzatus#htamasougou'
  get 'konzatus/htamaegg' => 'konzatus#htamaegg'
  get 'konzatus/htamasyagaku' => 'konzatus#htamasyagaku'
  get 'konzatus/htamakeizai' => 'konzatus#htamakeizai'
  get 'konzatus/htamagennfuku' => 'konzatus#htamagennfuku'
  get 'konzatus/htamasupoken' => 'konzatus#htamasupoken'

  get 'konzatus/wasedaookuma' => 'konzatus#wasedaookuma'
  get 'konzatus/wasedagroundzaka' => 'konzatus#wasedagroundzaka'

  get 'konzatus/msurugasky' => 'konzatus#msurugasky'
  get 'konzatus/msurugacafe' => 'konzatus#msurugacafe'
  get 'konzatus/msurugasan' => 'konzatus#msurugasan'

  get 'konzatus/mizumimori1' => 'konzatus#mizumimori1'
  get 'konzatus/mizumimori2' => 'konzatus#mizumimori2'
  get 'konzatus/mizumimori3' => 'konzatus#mizumimori3'

  get 'konzatus/aoyama7' => 'konzatus#aoyama7'
  get 'konzatus/aoyama17' => 'konzatus#aoyama17'
  get 'konzatus/aoyamacafe' => 'konzatus#aoyamacafe'

  get 'konzatus/rike1' => 'konzatus#rike1'
  get 'konzatus/rikeaibi' => 'konzatus#rikeaibi'
  get 'konzatus/riketullys' => 'konzatus#riketullys'
  get 'konzatus/rikehararu' => 'konzatus#rikehararu'
  get 'konzatus/rike9' => 'konzatus#rike9'
  get 'konzatus/rikehibiya' => 'konzatus#rikehibiya'

  get 'konzatus/rniizaforest' => 'konzatus#rniizaforest'
  get 'konzatus/rniizakokage' => 'konzatus#rniizakokage'
  get 'konzatus/rniizahararu' => 'konzatus#rniizahararu'

  get 'posts/detail' => 'posts#detail'

  resources :users, only: [:index, :show, :new]
  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  
  resources :konzatus, except: [:show]
  resources :relationships, only: [:create, :destroy]
end
