class AddSkillsDescriptionToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :description, :string
    add_column :users, :desired_skills, :string
    add_column :users, :skills, :string
    add_column :users, :linkedin_url, :string
  end
end
