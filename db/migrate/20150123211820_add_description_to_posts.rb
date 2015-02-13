class AddDescriptionToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :description, :string
    remove_column :posts, :name, :string
  end
end
