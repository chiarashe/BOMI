class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ROLES = %w(Patient Doctor)
  validates :role, inclusion: { in: ROLES }

  PROFESSION = %w(Médico Nutriólogo Psicólogo Psiquiatra Terapeuta)

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true, uniqueness: true

  has_many :reports, dependent: :destroy
  has_one_attached :photo

  has_many :doctors, through: :reports, source: :reports, dependent: :destroy
  has_many :patients, through: :reports, source: :reports, dependent: :destroy

  def profile_completed?
    common_fields = [first_name, last_name, phone_number, email, role].all?(&:present?)
    if doctor?
      common_fields && profession.present? && date_birth.present? && cedula_profesional.present? && location.present?
    elsif patient?
      common_fields && goal.present? && date_birth.present?
    else
      false
    end
  end

  def patient?
    role == "Patient"
  end

  def doctor?
    role == "Doctor"
  end
end
