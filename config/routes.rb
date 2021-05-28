Rails.application.routes.draw do
  root to: 'puzzles#index'
  resources :puzzles, except: [:edit, :update, :destroy]
end
