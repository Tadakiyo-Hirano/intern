Rails.application.routes.draw do
  root to: 'staticpages#top'

  devise_for :users,
    controllers: {
      sessions: 'users/sessions',
      registrations: "users/registrations",
      omniauth_callbacks: 'users/omniauth_callbacks'
    }
  devise_for :admin,
    controllers: {
      sessions: 'admins/sessions',
      registrations: "admins/registrations",
    }

  resources :users, only: [:show] do
    resources :bodyweights, only: [:create, :edit, :update]
    resources :targetweights, only: [:new, :create, :edit, :update]
    resources :bmrs, only: [:new, :create]
  end

  resources :today_exercises

  resources :exercise_categories do
    resources :exercise_contents
  end
end
