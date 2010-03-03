class CreateIssues < ActiveRecord::Migration
  def self.up
    create_table :issues do |t|
      t.string :title
      t.string :code
      t.content :description

      t.timestamps
    end
        
  end

  def self.down
    drop_table :issues
  end
end
