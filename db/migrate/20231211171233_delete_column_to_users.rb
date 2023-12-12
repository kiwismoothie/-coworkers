class ChangeColumnToUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :desired_skills
    remove_column :users, :skills
  end
end
