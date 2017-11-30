module ArticlesHelper
  def get_latest_hn
    @hackernews = Hackernews.all.order('id DESC')
    @hackernews = Kaminari.paginate_array(@hackernews).page(params[:page]).per(20)
  end
end
