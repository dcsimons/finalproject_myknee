class Survey < ActiveRecord::Base
  has_many :patients_surveys
  has_many :patients, through: :patients_surveys

  has_many :surveys_questions
	has_many :questions, through: :surveys_questions
end
