class Link < ApplicationRecord
  belongs_to :linkable, polymorphic: true

  validates :url, allow_nil: true
  validates :name, allow_nil: true
end
