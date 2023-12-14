class AddColumnParkingToWorkspace < ActiveRecord::Migration[7.1]
  def change
    add_column :workspaces, :parking, :boolean, default: nil
  end
end
