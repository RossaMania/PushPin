class AddLinkableToLinks < ActiveRecord::Migration[7.1]
  def change
    add_reference :links, :linkable, polymorphic: true, null: false
  end
end
