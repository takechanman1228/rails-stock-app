class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    @markets = @companies[0].market
    # @markets_from_companies = Company.market
  end
end
