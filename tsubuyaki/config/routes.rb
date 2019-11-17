Rails.application.routes.draw do
  resources :tsubuyakies do
     collection do
       post :confirm #confirmへのルーティング
     end
   end

end
