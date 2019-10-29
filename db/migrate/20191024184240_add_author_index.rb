class AddAuthorIndex < ActiveRecord::Migration[6.0]
  def change
    add_index :articles, :author
  end
end
