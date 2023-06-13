class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments, dependent: :destroy
  belongs_to :category

  validates :phone, presence: true, uniqueness: true, format: { with: /\A\d{10}\z/, message: "should be a 10-digit number" }
  validates :first_name, presence: true
  validates :last_name, presence: true
end
