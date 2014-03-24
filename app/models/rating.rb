class Rating < ActiveRecord::Base
  has_many :questions_ratings
  has_many :questions, through: :questions_ratings
end
