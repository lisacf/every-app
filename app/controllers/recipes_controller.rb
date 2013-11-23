class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  before_action :reset_proportions, only: [:edit, :update]

  def index
    @recipes = Recipe.all
  end
  
  def show
    @rateable = @recipe
    @ratings = @rateable.ratings.where("id IS NOT NULL")
    @rating = @ratings.new
    @photoable = @recipe
    @photos = @photoable.photos.where("id IS NOT NULL")
    @photo = @photos.new
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url }
    end
  end
  private

    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:name, :category_id, :cupcake_part, :cupcake_count, :average_rating, :rating_count, :components, :instructions, :baketemp, :baketime, :source,
                          proportions_attributes: [:_destroy, :amount, :measure, :ingredient_id])
    end
    def reset_proportions
      @proportions = @recipe.proportions
      @proportions.each do |proportion|
        proportion.destroy
      end
    end
end
