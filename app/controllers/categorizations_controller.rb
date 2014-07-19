class CategorizationsController < ApplicationController
  skip_before_action :authorize

  # GET /categorizations
  # GET /categorizations.json
  def index
    binding.pry
    @categorizations = Categorization.all
  end

  def create
  	puts params
  end
 
end
