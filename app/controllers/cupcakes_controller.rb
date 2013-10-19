class CupcakesController < ApplicationController
  before_action :set_cupcake, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: :token

  def token
  end
  def index
    @cupcakes = Cupcake.all
  end
  
  def show
    # @ratings = @rateable.ratings
    # @rating = Rating.new
  end

  def new
    @cupcake = Cupcake.new
    2.times { @cupcake.recipes.build }
  end

  def create
    @cupcake = Cupcake.new(cupcake_params)

    respond_to do |format|
      if @cupcake.save
        format.html { redirect_to @cupcake }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @cupcake.save
        format.html { redirect_to @cupcake, notice: "Cupcake recipe was successfully updated"}
      else
        format.html { render action: 'edit' }
      end
    end
  end
  
  def destroy
    @cupcake.destroy
    respond_to do |format|
      format.html { redirect_to cupcakes_url }
    end
  end
  private

    def set_cupcake
      @cupcake = Cupcake.find(params[:id])
    end

    def cupcake_params
      params.require(:cupcake).permit(:name, :description, :source, :average_rating, :recipes_attributes => [:id, :recipe_name, :cupcake_part, :cupcake_count, :ingredients, :instructions, :baketemp, :baketime, :preptime])
    end
end
