class Question < ActiveRecord::Base
	has_many :surveys_questions
	has_many :surveys, through: :survey_questions

	has_many :questions_ratings
	has_many :ratings, through: :questions_ratings
end
