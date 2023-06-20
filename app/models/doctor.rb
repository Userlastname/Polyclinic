class Doctor < ApplicationRecord
  MAX_APPOINTMENT_COUNT = 10
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments, dependent: :destroy
  belongs_to :category

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true, uniqueness: true, format: { with: /\A\d{10}\z/, message: "should be a 10-digit number" }
end
