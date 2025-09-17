class PaymentsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @workspace = @booking.workspace
  end
end
