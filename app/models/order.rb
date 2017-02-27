class Order < ApplicationRecord
  belongs_to :restaurant, optional: true
  has_many :patrons, dependent: :destroy
  has_many :posts, dependent: :destroy
end
