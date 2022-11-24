class BookingsController < ApplicationController
  before_action :set_product, only: %i[new create]
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @booking.product = @product
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.product = @product
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end
