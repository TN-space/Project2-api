class DestinationsController < ProtectedController
  # ApplicationController
  before_action :set_destination, only: %i[show update destroy]

  # GET /destinations
  def index
    @destinations = Destination.all

    render json: @destinations
  end

  # GET /destinations/1
  def show
    render json: @destination
  end

  # POST /destinations
  def create
    @destination = current_user.destinations.build(destination_params)

    if @destination.save
      render json: @destination, status: :created, location: @destination
    else
      render json: @destination.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /destinations/1
  def update
    if @destination.update(destination_params)
      render json: @destination
    else
      render json: @destination.errors, status: :unprocessable_entity
    end
  end

  # DELETE /destinations/1
  def destroy
    @destination = current_user.destinations.find(params[:id])
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_destination
    @destination = Destination.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def destination_params
    params.require(:destination).permit(:name, :city, :state)
  end
end
