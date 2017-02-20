class Order < ApplicationRecord
  belongs_to :restaurant, optional: true
  has_many :patrons, dependent: :destroy
end
