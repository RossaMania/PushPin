class CreateLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :links do |t|
      t.string :url
      t.references :linkable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
