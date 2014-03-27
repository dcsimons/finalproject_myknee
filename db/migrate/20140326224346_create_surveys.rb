class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.references :patient, index: true
      t.string :time_period
      t.string :status
      t.integer :q1_rating
      t.integer :q2_rating
      t.integer :q3_rating
      t.integer :q4_rating
      t.integer :q5_rating
      t.integer :q6_rating

      t.timestamps
    end
  end
end
