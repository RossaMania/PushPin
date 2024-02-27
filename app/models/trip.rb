class Trip < ApplicationRecord
  has_many :places,
    dependent: :destroy
  has_many :links, as: :linkable, dependent: :destroy
  validates :dummy_presence_validation, presence: true
end
