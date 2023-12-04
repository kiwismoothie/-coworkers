class AddNameToWorkspace < ActiveRecord::Migration[7.1]
  def change
    add_column :workspaces, :name, :string
  end
end
