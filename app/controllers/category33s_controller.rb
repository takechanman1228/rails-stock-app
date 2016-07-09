class Category33sController < ApplicationController
  def index
    @category33s = Category33.all
  end
end
