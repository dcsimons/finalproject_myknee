class Patient < ActiveRecord::Base
  belongs_to :physician
  has_many :patients_surveys
  has_many :surveys, through: :patients_surveys
end
