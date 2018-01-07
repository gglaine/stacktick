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
    @techcrunches = Kaminari.paginate_array(@techcrunches).page(params[:page]).per(25)
  end
end
