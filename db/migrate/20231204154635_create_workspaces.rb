class CreateWorkspaces < ActiveRecord::Migration[7.1]
  def change
    create_table :workspaces do |t|
      t.string :ambiance
      t.string :address
      t.boolean :internet_connexion
      t.boolean :smoking
      t.boolean :air_conditioning
      t.string :animals
      t.string :desired_skill
      t.integer :capacity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
