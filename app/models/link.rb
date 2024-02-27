class Link < ApplicationRecord
  belongs_to :linkable, polymorphic: true

  validates :url, allow_blank: true
  validates :name, allow_blank: true

  validates :dummy_presence_validation, presence: true
end
