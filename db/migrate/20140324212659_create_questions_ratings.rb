class CreateQuestionsRatings < ActiveRecord::Migration
  def change
    create_table :questions_ratings do |t|
    	t.belongs_to :question, index: true
			t.belongs_to :rating, index: true
      t.timestamps
    end
  end
end
