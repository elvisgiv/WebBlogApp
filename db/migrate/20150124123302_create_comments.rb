class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
    add_index :comments, :user_id, name: "user_id"
    add_index :comments, :post_id, name: "post_id"
    add_index :comments, :created_at, name: "created_at"
  end
end
