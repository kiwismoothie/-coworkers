class AddDescriptionToWorkspaces < ActiveRecord::Migration[7.1]
  def change
    add_column :workspaces, :description, :text
  end
end
