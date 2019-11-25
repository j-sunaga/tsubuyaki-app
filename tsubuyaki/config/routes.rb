Rails.application.routes.draw do
  resources :tsubuyakies do
     collection do
       post :confirm #confirmへのルーティング
       get :profile
     end
   end

end
