class Recommendation < ApplicationRecord
  belongs_to :doctor
  belongs_to :report
end
