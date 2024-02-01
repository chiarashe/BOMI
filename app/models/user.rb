class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ROLES = %w(Patient Doctor)
  validates :role, inclusion: { in: ROLES }

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true, uniqueness: true

  has_many :reports, dependent: :destroy
  has_one_attached :photo

  has_many :doctors, dependent: :destroy
  has_many :patients, through: :reports, source: :reports, dependent: :destroy

  def patient?
    role == "Patient"
  end

  def doctor?
    role == "Doctor"
  end
end
