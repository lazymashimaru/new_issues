class CreateNewIssues < ActiveRecord::Migration
  def change
    create_table :new_issues do |t|
      t.string :title
      t.text :description
      t.integer :no_followers

      t.timestamps
    end
  end
end
