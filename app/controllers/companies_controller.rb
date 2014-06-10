class CompaniesController < ApplicationController
  # GET /companies/1
  # GET /companies/1.json
  def show
    @company = Company.last
    @company_active = true

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @company }
    end
  end
end
