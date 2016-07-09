class ScalesController < ApplicationController
  def index
    @scales = Scale.all
  end
end
