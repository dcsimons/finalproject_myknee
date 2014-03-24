class CreateSurveysQuestions < ActiveRecord::Migration
  def change
    create_table :surveys_questions do |t|
    	t.belongs_to :survey, index: true
      t.belongs_to :question, index: true

      t.timestamps
    end
  end
end
