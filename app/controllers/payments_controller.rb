class PaymentsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @workspace = @booking.workspace
    @stripe_publishable_key = ENV['STRIPE_PUBLISHABLE_KEY']
  end

end
