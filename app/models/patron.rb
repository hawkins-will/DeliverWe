class Patron < ApplicationRecord
  belongs_to :order, optional: true
end
