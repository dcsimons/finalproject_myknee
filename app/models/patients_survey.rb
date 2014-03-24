class PatientsSurvey < ActiveRecord::Base
	belongs_to :patient
	belongs_to :survey
end
