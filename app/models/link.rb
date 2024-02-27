class Link < ApplicationRecord
  belongs_to :linkable, polymorphic: true

  validates :url, presence: true
  validates :name, presence: true

end
