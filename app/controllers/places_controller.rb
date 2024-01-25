class PlacesController < ApplicationController
  before_action :find_trip

  def index
    @places = @trip.places
  end

  def new
    @place = @trip.places.build
  end

  def create
    @place = @trip.places.build(place_params)
    if @place.save
      redirect_to trip_places_path(@trip), notice: "Yay! Place was successfully created!"
    else
      render :new
    end
  end

  def edit
    @place = @trip.places.find(params[:id])
  end

  def update
    @place = @trip.places.find(params[:id])
    if @place.update(place_params)
      redirect_to trip_places_path(@trip), notice: "Yay! Place was successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @place = @trip.places.find(params[:id])
    @place.destroy
    redirect_to trip_places_path(@trip), notice: "Yay! Place was successfully deleted!"
  end

  private

  def find_trip
    @trip = Trip.find(params[:trip_id])
  end

  def place_params
    params.require(:place).permit(:name, :description)
  end
end
