class PhotosController < ApplicationController
	before_filter :load_photoable
  def index
  	@photos = @photoable.photos
  end

  def new
  	@photo = @photoable.photos.new
  end

  def create
  	@photo = @photoable.photos.new(photo_params)
    @photo.update_attribute(:user_id, current_user.id) if current_user
  	if @photo.save
  		redirect_to @photoable, notice: "Photo created"
  	else
  		render :new
  	end
  end


  def edit
  	@photo = @photoable.photos
  end
  def update
  end

  private
  def photo_params
  	params.require(:photo).permit(:image, :remote_image_url, :user_id)
  end

  def load_photoable
  	klass = [Recipe, Image].detect { |r| params["#{r.name.underscore}_id"] }
  	@photoable = klass.find(params["#{klass.name.underscore}_id"])
  end
end
