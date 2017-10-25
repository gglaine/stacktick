module ArticlesHelper
  def get_latest_hn
    @hackernews = Hackernews.all
    @hackernews = Kaminari.paginate_array(@hackernews).page(params[:page]).per(20)
  end
end
