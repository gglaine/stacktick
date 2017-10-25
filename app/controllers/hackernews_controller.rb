class HackernewsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @hackernew = Hackernews.new
  end

  def create
    @hackernew = Hackernews.new
    @hackernew.save
  end

  def index
    @hackernews = Hackernews.all
    @hackernews = Kaminari.paginate_array(@hackernews).page(params[:page]).per(25)
  end
end
