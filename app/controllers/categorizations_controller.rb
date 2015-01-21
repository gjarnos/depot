class CategorizationsController < ApplicationController
  skip_before_action :authorize
  before_action :set_categorization, only: [:show, :edit, :update, :destroy]

  # GET /categorizations
  # GET /categorizations.json
  def index
    @categorizations = Categorization.all
  end

  def show
  end

  def new
    @categorization = Categorization.new
  end

  def edit
  end

  def create
    @categorization = Categorization.new(categorization_params)

    respond_to do |format|
      if @categorization.save
        format.html { redirect_to @categorization,
          notice: 'Category was successfully created.' }
        format.json { render action: 'show', status: :created,
          location: @categorization }
      else
        format.html { render action: 'new' }
        format.json { render json: @categorization.errors,
          status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @categorization.update(categorization_params)
        format.html { redirect_to @categorization,
          notice: 'Category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @categorization.errors,
          status: :unprocessable_entity }
      end
    end
  end
 
  def destroy
    @categorization.destroy

    respond_to do |format|
      format.html { redirect_to categorizations_url }
      format.json { head :no_content }
    end
  end

private

  def set_categorization
    @categorization = Categorization.find(params[:id])
  end

  def categorization_params
    params.require(:categorization).permit(:product_id, :clothing_size_id, :clothing_color_id, :quantity)
  end
end
