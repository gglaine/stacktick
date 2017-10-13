class WagonpostsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @wagonposts = WagonPost.all
  end

  def create
    @wagonpost = WagonPost.new
    @wagonpost.save
  end
end
