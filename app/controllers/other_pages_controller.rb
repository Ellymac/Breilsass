class OtherPagesController < ApplicationController
  def show
    @articles = Article.page(params[:page]).order('created_at DESC').per_page(2)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:article][:title]
    @article.content = params[:article][:content]
    @article.user_id = current_user.id
    if params[:article][:image]
      @article.image = params[:article][:image]
    end
    if @article.save
      flash.now[:success] = "Votre article a bien été créé."
    else
      render 'new'
    end
  end
end
