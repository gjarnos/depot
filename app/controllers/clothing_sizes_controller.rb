class ClothingSizesController < ApplicationController
  skip_before_action :authorize
  before_action :set_clothing_size, only: [:show, :edit, :update, :destroy]

  # GET /clothing_sizes
  # GET /clothing_sizes.json
  def index
    @clothing_sizes = ClothingSize.all
  end

  # GET /clothing_sizes/1
  # GET /clothing_sizes/1.json
  def show
  end

  # GET /clothing_sizes/new
  def new
    @clothing_size = ClothingSize.new
  end

  # GET /clothing_sizes/1/edit
  def edit
  end

  # POST /clothing_sizes
  # POST /clothing_sizes.json
  def create
    @clothing_size = ClothingSize.new(clothing_size_params)

    respond_to do |format|
      if @clothing_size.save
        format.html { redirect_to @clothing_size,
          notice: 'Clothing size was successfully created.' }
        format.json { render action: 'show', status: :created,
          location: @clothing_size }
      else
        format.html { render action: 'new' }
        format.json { render json: @clothing_size.errors,
          status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clothing_sizes/1
  # PATCH/PUT /clothing_sizes/1.json
  def update
    respond_to do |format|
      if @clothing_size.update(clothing_size_params)
        format.html { redirect_to @clothing_size,
          notice: 'Clothing size was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @clothing_size.errors,
          status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clothing_sizes/1
  # DELETE /clothing_sizes/1.json
  def destroy
    @clothing_size.destroy

    respond_to do |format|
      format.html { redirect_to clothing_sizes_url }
      format.json { head :no_content }
    end
  end

private

  def set_clothing_size
    @clothing_size = ClothingSize.find(params[:id])
  end

  def clothing_size_params
    params.require(:clothing_size).permit(:shirt_size)
  end
end
