Rails.application.routes.draw do
  resources :tsubuyakies, :except => :new do #newへのルーティングを除く
     collection do
       post :confirm  #confirmへのルーティング
       get :profile   #profileへのルーティング
     end
   end
end
