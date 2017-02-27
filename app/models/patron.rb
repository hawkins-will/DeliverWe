class Patron < ApplicationRecord
  belongs_to :order, optional: true
  has_many :items, dependent: :destroy

  belongs_to :user
end
