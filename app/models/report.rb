class Report < ApplicationRecord
  belongs_to :patient
  has_many :doctors, through: :patients
end
