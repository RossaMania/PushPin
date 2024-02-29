class RemoveLinkableFromLinks < ActiveRecord::Migration[6.1]
  def change
    change_table :links, bulk: true do |t|
      t.remove :linkable_type
      t.remove :linkable_id
      # Add other remove_column or add_column calls here if needed
    end
  end
end
