class Place < ApplicationRecord
  belongs_to :trip

  validates :date_visited, presence: true

  has_many :links, as: :linkable, dependent: :destroy

  accepts_nested_attributes_for :links

end
