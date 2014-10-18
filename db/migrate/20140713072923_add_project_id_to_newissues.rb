class AddProjectIdToNewissues < ActiveRecord::Migration
  def change
    add_column :new_issues, :project_id, :integer, :default => 1
  end
end
