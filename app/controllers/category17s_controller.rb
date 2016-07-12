class Category17sController < ApplicationController
  before_action :set_category17, only: [:show]

  def index
    @category17s = Category17.all
  end
  def show
  end

  private
  def set_market
    @category17s = Category17.find(params[:id])
  end
end
