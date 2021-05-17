Rails.application.routes.draw do
  root to: "posts#index"
  post '/posts/guest_sign_in', to: 'posts#guest_sign_in'

end