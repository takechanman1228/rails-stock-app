class Category33sController < ApplicationController
  before_action :set_category33, only: [:show]

  def index
    @category33s = Category33.all
  end
  def show
    @companies = Company.all
    @compaies_this_category=@companies.where(category33_id:params[:id])

    # @category33s = Category33.all
    # @category33_hash = {}
    # Category33.all.each{|category33|
    #   @category33_hash[category33["code"]] = category33["category33"]
    # }

  end

  private
  def set_category33
    @category33 = Category33.find_by(code:params[:id])

    @category33_hash = {}
    Category33.all.each{|category33|
      @category33_hash[category33["code"]] = category33["category33"]
    }

    # @company_ids = Company.find_by(category33_id:params[:id])

    # @category33s = Category33.find(params[:id])
  end
end
