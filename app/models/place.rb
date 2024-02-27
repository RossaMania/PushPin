class Place < ApplicationRecord
  belongs_to :trip

  validates :date_visited, presence: true

  has_many :links, as: :linkable, dependent: :destroy

  validates :dummy_presence_validation, presence: true
end
