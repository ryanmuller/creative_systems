class CreateContributionSelections < ActiveRecord::Migration
  def change
    create_table :contribution_selections do |t|
      t.integer :user_id
      t.integer :contribution_preference_id
      t.string :preference

      t.timestamps
    end
  end
end
