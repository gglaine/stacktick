module ArticlesHelper
  def get_latest_hn
    @hackernews = Hackernews.all
  end
end
