class Patient < ActiveRecord::Base
  belongs_to :physician
  has_many :ratings
  has_many :surveys, through: :ratings
  has_many :questions, through: :ratings
end
