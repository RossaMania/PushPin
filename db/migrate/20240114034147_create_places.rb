class CreatePlaces < ActiveRecord::Migration[7.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :string
      t.string :description
      t.string :text
      t.string :trip
      t.string :references

      t.timestamps
    end
  end
end
