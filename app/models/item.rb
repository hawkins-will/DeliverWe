class Item < ApplicationRecord
  belongs_to :patron, optional: true
end
