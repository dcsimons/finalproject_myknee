MyKnee::Application.routes.draw do
  
  resources :surveys, :except => [:new, :edit]
  resources :questions, :except => [:new, :edit]
  resources :ratings, :except => [:new, :edit]


end
