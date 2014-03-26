class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.belongs_to :physician, index: true
      t.string :name
      t.string :knee_location
      t.string :surgery_type
      t.string :knee_company
      t.string :knee_company_img
      t.string :knee_brand
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
