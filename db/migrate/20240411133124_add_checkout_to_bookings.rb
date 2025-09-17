class AddCheckoutToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :checkout_session_id, :string
  end
end
