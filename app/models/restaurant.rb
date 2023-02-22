class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :category, acceptance: { accept: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }, presence: true
  validates :name, presence: true
  validates :address, presence: true
end
