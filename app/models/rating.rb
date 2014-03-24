class Rating < ActiveRecord::Base
  belongs_to :survey
  belongs_to :question
  belongs_to :patient
end
