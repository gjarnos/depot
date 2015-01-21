class ClothingColorsController < ApplicationController
  skip_before_action :authorize
  before_action :set_clothing_color, only: [:show, :edit, :update, :destroy]

  # GET /clothing_colors
  # GET /clothing_colors.json
  def index
    @clothing_colors = ClothingColor.all
  end

  # GET /clothing_colors/1
  # GET /clothing_colors/1.json
  def show
  end

  # GET /clothing_colors/new
  def new
    @clothing_color = ClothingColor.new
  end

  # GET /clothing_colors/1/edit
  def edit
  end

  # POST /clothing_colors
  # POST /clothing_colors.json
  def create
    @clothing_color = ClothingColor.new(clothing_color_params)

    respond_to do |format|
      if @clothing_color.save
        format.html { redirect_to @clothing_color,
          notice: 'Clothing color was successfully created.' }
        format.json { render action: 'show', status: :created,
          location: @clothing_color }
      else
        format.html { render action: 'new' }
        format.json { render json: @clothing_color.errors,
          status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clothing_colors/1
  # PATCH/PUT /clothing_colors/1.json
  def update
    respond_to do |format|
      if @clothing_color.update(clothing_color_params)
        format.html { redirect_to @clothing_color,
          notice: 'Clothing color was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @clothing_color.errors,
          status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clothing_colors/1
  # DELETE /clothing_colors/1.json
  def destroy
    @clothing_color.destroy

    respond_to do |format|
      format.html { redirect_to clothing_colors_url }
      format.json { head :no_content }
    end
  end

private

  def set_clothing_color
    @clothing_color = ClothingColor.find(params[:id])
  end

  def clothing_color_params
    params.require(:clothing_color).permit(:shirt_color)
  end
end
