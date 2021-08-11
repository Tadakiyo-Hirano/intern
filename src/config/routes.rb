Rails.application.routes.draw do

  devise_for :users,
  controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations",
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

root to: 'staticpages#top'

resources :users do
end


end
