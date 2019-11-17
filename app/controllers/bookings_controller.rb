class BookingsController < ApplicationController
  before_action :found_booking, only: %i[show destroy edit update]
  def index
    @plants = policy_scope(Plant).order(start: :desc).where(user: current_user)
  end

  def show
  end

  def new
    @booking = Booking.new
    @plant = found_plant
    @booking.plant = @plant
    @booking.user = current_user
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.plant = found_plant
    @booking.total_price = found_plant.price_per_day * (@booking.end - @booking.start)
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      @plant = @booking.plant
      render :new
    end
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def found_plant
    Plant.find(params[:plant_id])
  end

  def found_booking
    Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start, :end)
  end
end
