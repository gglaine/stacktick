class TechcrunchesController < ApplicationController

  skip_before_action :authenticate_user!

  def new
    @techcrunch = Techcrunch.new
  end

  def create
    @techcrunch = Techcrunch.new
    @techcrunch.save
  end

  def index
    @techcrunches = Techcrunch.all
  end
end
