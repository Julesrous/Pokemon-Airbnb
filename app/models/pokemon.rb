class Pokemon < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :rents, dependent: :destroy
  has_many :review_pokemons, dependent: :destroy

  validates :name, :nature, :power, :level, :price_per_week, :description, presence: true

  include PgSearch::Model
  pg_search_scope :search_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
