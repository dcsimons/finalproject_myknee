class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :time_period
      t.string :status

      t.timestamps
    end
  end
end
