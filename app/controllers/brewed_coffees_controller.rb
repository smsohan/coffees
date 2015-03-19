class BrewedCoffeesController < ApplicationController
  before_action :set_brewed_coffee, only: [:show, :edit, :update, :destroy]

  def index
    @brewed_coffees = BrewedCoffee.all
  end

  def show
  end

  def new
    @brewed_coffee = BrewedCoffee.new
  end

  def edit
  end

  def create
    @brewed_coffee = BrewedCoffee.new(brewed_coffee_params)

    respond_to do |format|
      if @brewed_coffee.save
        format.html { redirect_to @brewed_coffee, notice: 'Brewed coffee was successfully created.' }
        format.json { render :show, status: :created, location: @brewed_coffee }
      else
        format.html { render :new }
        format.json { render json: @brewed_coffee.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @brewed_coffee.update(brewed_coffee_params)
        format.html { redirect_to @brewed_coffee, notice: 'Brewed coffee was successfully updated.' }
        format.json { render :show, status: :ok, location: @brewed_coffee }
      else
        format.html { render :edit }
        format.json { render json: @brewed_coffee.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brewed_coffee
      @brewed_coffee = BrewedCoffee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brewed_coffee_params
      params.require(:brewed_coffee).permit(:name)
    end
end
