class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
  validates :category, inclusion: %w[chinese italian japanese french belgian]
end
