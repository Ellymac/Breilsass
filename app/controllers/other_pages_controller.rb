class OtherPagesController < ApplicationController
  def survival
    @articles = Article.all
  end
end
