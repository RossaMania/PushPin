class AddNameToLinks < ActiveRecord::Migration[7.1]
  def change
    add_column :links, :name, :string
  end
end
