class Blog < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
