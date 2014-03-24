class CreatePatientsSurveys < ActiveRecord::Migration
  def change
    create_table :patients_surveys do |t|
    	t.belongs_to :patient, index: :true
      t.belongs_to :survey, index: true

      t.timestamps
    end
  end
end
