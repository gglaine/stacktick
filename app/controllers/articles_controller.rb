class ArticlesController < ApplicationController

  # http_basic_authenticate_with name: "stevewozniak", password: "applepie1984", except: [:index, :show]

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @articles = Article.all.order('created_at DESC').page params[:page]
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    # @article = current_user.articles.build(params[article_params])

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def show
    @user = current_user
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private

    def article_params
      params.require(:article).permit(:title, :text, :photo, :photo_cache)
    end


end
