class Blog < ApplicationRecord
  belongs_to :doctor, dependent: :destroy
end
