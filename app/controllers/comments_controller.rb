class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    @comment.user = current_user

    redirect_to article_path(@article)
  end


  def destroy
    @article = Article.find(params[:id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to articles_path
  end

  private

    def comment_params
      params.require(:comment).permit(:commenter, :body, :user_id)
    end

end
