class QuestionsRating < ActiveRecord::Base
	belongs_to :question
	belongs_to :rating
end