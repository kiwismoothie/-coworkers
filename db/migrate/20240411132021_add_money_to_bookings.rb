class AddMoneyToBookings < ActiveRecord::Migration[7.1]
  def change
    add_monetize :bookings, :price, currency: { present: false }
  end
end
