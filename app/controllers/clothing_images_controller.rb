class ClothingImagesController < ApplicationController
  skip_before_action :authorize
  before_action :set_clothing_image, only: [:show, :edit, :update, :destroy]

  # GET /clothing_images
  # GET /clothing_images.json
  def index
    @clothing_images = ClothingImage.all
  end

  # GET /clothing_images/1
  # GET /clothing_images/1.json
  def show
  end

  # GET /clothing_images/new
  def new
    @clothing_image = ClothingImage.new
  end

  # GET /clothing_images/1/edit
  def edit
  end

  # POST /clothing_images
  # POST /clothing_images.json
  def create
    @clothing_image = ClothingImage.new(clothing_image_params)

    respond_to do |format|
      if @clothing_image.save
        format.html { redirect_to @clothing_image,
          notice: 'Clothing image was successfully created.' }
        format.json { render action: 'show', status: :created,
          location: @clothing_image }
      else
        format.html { render action: 'new' }
        format.json { render json: @clothing_image.errors,
          status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clothing_images/1
  # PATCH/PUT /clothing_images/1.json
  def update
    respond_to do |format|
      if @clothing_image.update(clothing_image_params)
        format.html { redirect_to @clothing_image,
          notice: 'Clothing image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @clothing_image.errors,
          status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clothing_images/1
  # DELETE /clothing_images/1.json
  def destroy
    @clothing_image.destroy

    respond_to do |format|
      format.html { redirect_to clothing_images_url }
      format.json { head :no_content }
    end
  end

private

  def set_clothing_image
    @clothing_image = ClothingImage.find(params[:id])
  end

  def clothing_image_params
    params.require(:clothing_image).permit(:image_name)
  end
end
