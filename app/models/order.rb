class Order < ApplicationRecord
  belongs_to :restaurant
  has_many :patrons, dependent: :destroy
end
