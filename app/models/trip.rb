class Trip < ApplicationRecord
  has_many :places,
  dependent: :destroy
end
