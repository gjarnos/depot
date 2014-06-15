class CategorizationsController < ApplicationController
  skip_before_action :authorize

  # GET /categorizations
  # GET /categorizations.json
  def index
    @categorizations = Categorization.all
  end

 
end
