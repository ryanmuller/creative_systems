class AddCmuBooleanToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cmu, :boolean
  end
end
