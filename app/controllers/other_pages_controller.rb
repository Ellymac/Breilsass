class OtherPagesController < ApplicationController
  def survival
    @articles = Article.all
  end

  def newarticle
  end
end
