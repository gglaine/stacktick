class TechmemesController < ApplicationController

  skip_before_action :authenticate_user!
  def new
    @techmeme = Techmeme.new
  end

  def create
    @techmeme = Techmeme.new
    @techmeme.save
  end

  def index
    @techmemes = Techmeme.all
  end
end
