class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates_presence_of :name, :address, :category
  @categories = ["chinese", "italian", "japanese", "french", "belgian"]
  validates_inclusion_of :category, in: @categories
end
