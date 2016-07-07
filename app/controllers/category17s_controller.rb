class Category17sController < ApplicationController
  def index
    @category17s = Category17.all
  end
end
