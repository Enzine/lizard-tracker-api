class Entry < ApplicationRecord
  validates :general_weight, allow_nil: true,
                             numericality: { greater_than_or_equal_to: 0 }
  validates :general_length, allow_nil: true,
                             numericality: { greater_than_or_equal_to: 0 }
end
