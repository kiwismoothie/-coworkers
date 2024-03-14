class AddPriceToWorkspace < ActiveRecord::Migration[7.1]
  def change
    add_monetize :workspaces, :price, currency: { present: false }
  end
end
