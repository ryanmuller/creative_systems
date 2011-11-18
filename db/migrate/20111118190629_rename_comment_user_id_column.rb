class RenameCommentUserIdColumn < ActiveRecord::Migration
  def change
    rename_column :comments, :use_id, :user_id
  end
end
