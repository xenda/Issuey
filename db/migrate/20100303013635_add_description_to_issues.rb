class AddDescriptionToIssues < ActiveRecord::Migration
  def self.up
    add_column :issues, :description, :text
  end

  def self.down
    remove_column :issues, :description
  end
end
