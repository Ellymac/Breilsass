class AddFkUserComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :user_id, :int, foreign_key: {to_table: :users}
    add_column :comments, :article_id, :int, foreign_key: {to_table: :article}
    add_column :articles, :user_id, :int, foreign_key: {to_table: :users}
  end
end
