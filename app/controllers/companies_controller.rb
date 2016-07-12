class CompaniesController < ApplicationController
  before_action :set_company, only: [:show]

  def index
    @companies = Company.all
    # @markets = @companies[0].market
    # @markets_from_companies = Company.market
    @q = Company.ransack(params[:q])
    @result_companies = @q.result.page(params[:page]).per(40)
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
