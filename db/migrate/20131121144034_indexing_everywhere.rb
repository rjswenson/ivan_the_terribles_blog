class IndexingEverywhere < ActiveRecord::Migration
  def up
    add_index :comments, :post_id, :name => 'post_comment_combo'
    add_index :replies, :comment_id, :name => 'comment_reply_combo'
  end

  def down
    remove_index :comments, :post_id, :name => 'post_comment_combo'
    remove_index :replies, :comment_id, :name => 'comment_reply_combo'
  end
end
