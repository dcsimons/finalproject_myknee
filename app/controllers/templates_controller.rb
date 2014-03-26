class TemplatesController < ApplicationController

	def home
		render layout: false
	end

	def patients_index
		render layout: false
	end

	def single_patient
		render layout: false
	end

	def single_patient_survey
		render layout: false
	end

	def physicians_index
		render layout: false
	end

	def single_physician
		render layout: false
	end

end
