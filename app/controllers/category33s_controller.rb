class Category33sController < ApplicationController
  before_action :set_category33, only: [:show]

  def index
    @category33s = Category33.all
  end
  def show
    @companies = Company.all
  end

  private
  def set_category33
    @category33 = Category33.find_by(code:params[:id])
  end
end
