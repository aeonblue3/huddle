class ProjectUserJoin < ActiveRecord::Migration
  def self.up
    create_table :project_users, force: true, id: false do |t|
      t.references :project
      t.references :user
      t.timestamps
    end
  end

  def self.down
    drop_tables :projects_users
  end
end
