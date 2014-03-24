MyKnee::Application.routes.draw do
  
  resources :physicians, :except => [:new, :edit]
  resources :patients, :except => [:new, :edit] do
    resources :surveys, :except => [:new, :edit] do
      resources :questions, :except => [:new, :edit] do
        resources :ratings, :except => [:new, :edit]
      end
    end
  end

end
