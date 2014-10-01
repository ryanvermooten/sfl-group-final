class PhoneRentalsController < ApplicationController
  before_action :set_phone_rental, only: [:show, :edit, :update, :destroy]

  # GET /phone_rentals
  # GET /phone_rentals.json
  def index
    @phone_rentals = PhoneRental.all
  end

  # GET /phone_rentals/1
  # GET /phone_rentals/1.json
  def show
  end

  # GET /phone_rentals/new
  def new
    @phone_rental = PhoneRental.new
  end

  # GET /phone_rentals/1/edit
  def edit
  end

  # POST /phone_rentals
  # POST /phone_rentals.json
  def create
    @phone_rental = PhoneRental.new(phone_rental_params)

    respond_to do |format|
      if @phone_rental.save
        format.html { redirect_to @phone_rental, notice: 'Phone rental was successfully created.' }
        format.json { render :show, status: :created, location: @phone_rental }
      else
        format.html { render :new }
        format.json { render json: @phone_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_rentals/1
  # PATCH/PUT /phone_rentals/1.json
  def update
    respond_to do |format|
      if @phone_rental.update(phone_rental_params)
        format.html { redirect_to @phone_rental, notice: 'Phone rental was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_rental }
      else
        format.html { render :edit }
        format.json { render json: @phone_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_rentals/1
  # DELETE /phone_rentals/1.json
  def destroy
    @phone_rental.destroy
    respond_to do |format|
      format.html { redirect_to phone_rentals_url, notice: 'Phone rental was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_rental
      @phone_rental = PhoneRental.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_rental_params
      params.require(:phone_rental).permit(:phone_id, :user_id, :data, :charger)
    end
end
