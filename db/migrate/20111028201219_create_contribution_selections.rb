class CreateContributionSelections < ActiveRecord::Migration
  def change
    create_table :contribution_selections do |t|

      t.timestamps
    end
  end
end
