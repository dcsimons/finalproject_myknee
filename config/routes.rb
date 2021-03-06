MyKnee::Application.routes.draw do

  get "/", to: "home#index"

  get "/home", to: "templates#home"
  get "/patients_index", to: "templates#patients_index"
  get "/single_patient", to: "templates#single_patient"
  get "/single_patient_survey", to: "templates#single_patient_survey"
  get "/single_patient_take_survey", to: "templates#single_patient_take_survey"
  get "/single_patient_update_survey", to: "templates#single_patient_update_survey"

  get "/physicians_index", to: "templates#physicians_index"
  get "/single_physician", to: "templates#single_physician"
  get "/single_physician_new_patient", to: "templates#new_patient"
  
  resources :physicians, :except => [:new, :edit]
  resources :patients, :except => [:new, :edit] do
    resources :surveys, :except => [:new, :edit]
  end

end