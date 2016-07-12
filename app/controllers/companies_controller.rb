class CompaniesController < ApplicationController
  before_action :set_company, only: [:show]

  def index
    @companies = Company.all
    # @markets = @companies[0].market
    # @markets_from_companies = Company.market
    @q = Company.ransack(params[:q])
    @result_companies = @q.result.page(params[:page]).per(40)
    @category33s = Category33.all
    @category33_hash = {}
    Category33.all.each{|category33|
      @category33_hash[category33["code"]] = category33["category33"]
    }

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
