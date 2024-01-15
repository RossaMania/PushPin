class AddTripRefToPlaces < ActiveRecord::Migration[7.1]
  def change
    add_reference :places, :trip, null: false, foreign_key: true
  end
end
