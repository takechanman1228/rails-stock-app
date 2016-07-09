class CompaniesController < ApplicationController
  before_action :set_company, only: [:show]

  def index
    @companies = Company.all
    # @markets = @companies[0].market
    # @markets_from_companies = Company.market
  end
  def show
  end

  # セキュリティ
  private

  def company_params
      params[:company].permit(:name)
  end

  def set_company
    @company = Company.find(params[:id])
  end

end
