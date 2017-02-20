class Restaurant < ApplicationRecord
  has_many :orders, dependent: :destroy
end
