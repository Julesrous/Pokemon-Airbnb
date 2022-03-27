class ReviewPokemon < ApplicationRecord
  belongs_to :pokemon
  belongs_to :user
  validates :content, :rating, presence: true
end
