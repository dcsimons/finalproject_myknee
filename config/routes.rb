MyKnee::Application.routes.draw do
  
  resources :patients, :except => [:new, :edit]
  resources :physicians, :except => [:new, :edit]
  resources :surveys, :except => [:new, :edit]
  resources :questions, :except => [:new, :edit]
  resources :ratings, :except => [:new, :edit]

end
