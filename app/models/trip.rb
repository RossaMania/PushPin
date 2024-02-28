class Trip < ApplicationRecord
  has_many :places, dependent: :destroy
  has_many :links, as: :linkable, dependent: :destroy

  accepts_nested_attributes_for :links, allow_destroy: true
end