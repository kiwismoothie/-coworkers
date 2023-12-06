class AddCoordinatesToWorkspaces < ActiveRecord::Migration[7.1]
  def change
    add_column :workspaces, :latitude, :float
    add_column :workspaces, :longitude, :float
  end
end
