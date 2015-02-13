class AddAncestryToComments < ActiveRecord::Migration
  def change
    add_column :comments, :ancestry, :string
    add_index  :comments, :ancestry, name: "ancestry"
  end
end
