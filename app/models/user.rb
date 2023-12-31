class User < ApplicationRecord
  has_many :foods, foreign_key: 'user_id'
  has_many :recipes, foreign_key: 'user_id'
  has_many :recipe_foods, foreign_key: 'user_id'

  validates :name, presence: true
end
