class Trip < ApplicationRecord
  has_many :places,
    dependent: :destroy
  has_many :links, as: :linkable
end
