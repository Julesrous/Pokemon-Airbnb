class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  has_many :pokemons, dependent: :destroy
  
  validates :email, :first_name, :last_name, :region, :password, presence: true
  validates :email, uniqueness: true
  validates :first_name, :last_name, uniqueness: { scope: [:first_name, :last_name] }
  validates :region, inclusion: { in: %w(Kanto Johto Hoenne Sinnoh),
    message: "%{value} is not a valid region" }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
