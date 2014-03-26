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
  
  resources :physicians, :except => [:new, :edit]
  resources :patients, :except => [:new, :edit] do
    resources :surveys, :except => [:new, :edit] do
      resources :questions, :except => [:new, :edit] do
        resources :ratings, :except => [:new, :edit]
      end
    end
  end

end

#                          Prefix Verb   URI Pattern                                                                           Controller#Action
#                      physicians GET    /physicians(.:format)                                                                 physicians#index
#                                 POST   /physicians(.:format)                                                                 physicians#create
#                       physician GET    /physicians/:id(.:format)                                                             physicians#show
#                                 PATCH  /physicians/:id(.:format)                                                             physicians#update
#                                 PUT    /physicians/:id(.:format)                                                             physicians#update
#                                 DELETE /physicians/:id(.:format)                                                             physicians#destroy
# patient_survey_question_ratings GET    /patients/:patient_id/surveys/:survey_id/questions/:question_id/ratings(.:format)     ratings#index
#                                 POST   /patients/:patient_id/surveys/:survey_id/questions/:question_id/ratings(.:format)     ratings#create
#  patient_survey_question_rating GET    /patients/:patient_id/surveys/:survey_id/questions/:question_id/ratings/:id(.:format) ratings#show
#                                 PATCH  /patients/:patient_id/surveys/:survey_id/questions/:question_id/ratings/:id(.:format) ratings#update
#                                 PUT    /patients/:patient_id/surveys/:survey_id/questions/:question_id/ratings/:id(.:format) ratings#update
#                                 DELETE /patients/:patient_id/surveys/:survey_id/questions/:question_id/ratings/:id(.:format) ratings#destroy
#        patient_survey_questions GET    /patients/:patient_id/surveys/:survey_id/questions(.:format)                          questions#index
#                                 POST   /patients/:patient_id/surveys/:survey_id/questions(.:format)                          questions#create
#         patient_survey_question GET    /patients/:patient_id/surveys/:survey_id/questions/:id(.:format)                      questions#show
#                                 PATCH  /patients/:patient_id/surveys/:survey_id/questions/:id(.:format)                      questions#update
#                                 PUT    /patients/:patient_id/surveys/:survey_id/questions/:id(.:format)                      questions#update
#                                 DELETE /patients/:patient_id/surveys/:survey_id/questions/:id(.:format)                      questions#destroy
#                 patient_surveys GET    /patients/:patient_id/surveys(.:format)                                               surveys#index
#                                 POST   /patients/:patient_id/surveys(.:format)                                               surveys#create
#                  patient_survey GET    /patients/:patient_id/surveys/:id(.:format)                                           surveys#show
#                                 PATCH  /patients/:patient_id/surveys/:id(.:format)                                           surveys#update
#                                 PUT    /patients/:patient_id/surveys/:id(.:format)                                           surveys#update
#                                 DELETE /patients/:patient_id/surveys/:id(.:format)                                           surveys#destroy
#                        patients GET    /patients(.:format)                                                                   patients#index
#                                 POST   /patients(.:format)                                                                   patients#create
#                         patient GET    /patients/:id(.:format)                                                               patients#show
#                                 PATCH  /patients/:id(.:format)                                                               patients#update
#                                 PUT    /patients/:id(.:format)                                                               patients#update
#                                 DELETE /patients/:id(.:format)                                                               patients#destroy
