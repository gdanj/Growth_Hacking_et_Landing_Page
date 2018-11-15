Rails.application.routes.draw do
  get 'suscribers/index'
  get 'instagram/auth', to: "instagram#auth"
  get 'instagram/callback', to: "instagram#callback"
  get '/', to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
