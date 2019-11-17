class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :edit, :update, :destroy]
  def index
    @plants = policy_scope(Plant).order(created_at: :asc).where.not(latitude: nil, longitude: nil)

    @markers = @plants.map do |plant|
      {
        lat: plant.latitude,
        lng: plant.longitude,
        infoWindow: render_to_string(partial: "/plants/info_window", locals: { plant: plant })
      }
    end
  end

  def show
  end

  def new
    @plant = Plant.new
    authorize @plant
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.owner = current_user if user_signed_in?
    authorize @plant
    if @plant.save
      redirect_to plants_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @plant.update(plant_params)
      redirect_to plant_path(@plant)
    else
      render :edit
    end
  end

  def destroy
    @plant.destroy
    redirect_to plants_path
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :description, :location, :price_per_day, :photo)
  end

  def set_plant
    @plant = Plant.find(params[:id])
    authorize @plant
  end
end
