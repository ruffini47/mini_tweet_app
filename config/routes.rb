Rails.application.routes.draw do
  
  get 'posts/index'

  #get 'posts#index'

  root 'home#top'
  get 'about', to: 'home#about'
end