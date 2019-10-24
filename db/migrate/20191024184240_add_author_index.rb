class AddAuthorIndex < ActiveRecord::Migration[6.0]
  def change
    add_index :articles, :author, unique: true
  end
end
