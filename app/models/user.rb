class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  has_many :pokemons, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :participations, dependent: :destroy
  has_many :chatrooms, through: :participations
  has_many :review_pokemons, dependent: :destroy
  has_many :review_users, dependent: :destroy

  validates :email, :first_name, :last_name, :region, :password, :address, presence: true
  validates :email, uniqueness: true
  validates :first_name, :last_name, uniqueness: { scope: [:first_name, :last_name] }
  validates :region, inclusion: { in: %w(Kanto Johto Hoenne Sinnoh),
    message: "%{value} is not a valid region" }
  
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
