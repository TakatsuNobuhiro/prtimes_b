class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    company_id = params[:company_id]
    # @company = Company.all.where(:company_id = company_id)
  end
end
