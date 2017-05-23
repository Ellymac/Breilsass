class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @article = Article.find(params[:art])
  end

  def create
    @comment = Comment.new
    @comment.body = params[:comment][:body]
    @comment.user = current_user
    @comment.article = Article.find_by(id: params[:comment][:article])
    if @comment.save
      flash.now[:success] = "Votre commentaire a bien été enregistré."
    else
      render 'new'
    end
  end

  def show
    @article = Article.find_by(id: params[:art])
    @comments = @article.comments
  end
end
