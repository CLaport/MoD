class ChoicesController < ApplicationController
  def new
    @choice = Choice.new
  end
end
