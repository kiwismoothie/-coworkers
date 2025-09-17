class AddAmountToBookings < ActiveRecord::Migration[7.1]
  def change
    add_monetize :bookings, :amount, currency: { present: false }
  end
end
