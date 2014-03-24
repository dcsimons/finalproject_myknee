class Question < ActiveRecord::Base
	has_many :ratings
	has_many :surveys, through: :ratings
	has_many :patients, through: :ratings
end
