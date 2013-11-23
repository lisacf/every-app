class CupcakesController < ApplicationController
  before_action :set_cupcake, only: [:show, :edit, :update, :destroy]

  def index
    @cupcakes = Cupcake.all
  end
  
  def show
    @rateable = @cupcake
    @ratings = @rateable.ratings.where("id IS NOT NULL")
    @rating = @ratings.new
    @photoable = @cupcake
    @photos = @photoable.photos.where("id IS NOT NULL")
    @photo = @photos.new
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
      params.require(:cupcake).permit(:name, :description, :source, :average_rating, :recipes_attributes => [:id, :name, :category_id, :cupcake_part, :cupcake_count, :components, :instructions, :baketemp, :baketime, :preptime])
    end
end
