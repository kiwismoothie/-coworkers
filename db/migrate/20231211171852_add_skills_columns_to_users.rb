class AddSkillsColumnsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :desired_skills, :text, array: true, default: []
    add_column :users, :skills, :text, array: true, default: []
  end
end
