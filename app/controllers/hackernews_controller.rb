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
    @hackernews = Hackernews.order('created_at DESC').last(200)
    @hackernews = Kaminari.paginate_array(@hackernews).page(params[:page]).per(100)
  end
end
