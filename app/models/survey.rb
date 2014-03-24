class Survey < ActiveRecord::Base
  has_many :ratings
  has_many :patients, through: :ratings
	has_many :questions, through: :ratings
end
