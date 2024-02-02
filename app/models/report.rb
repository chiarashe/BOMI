class Report < ApplicationRecord
  belongs_to :patient
  has_many :doctors, through: :patients
  has many_attached :photos
end
