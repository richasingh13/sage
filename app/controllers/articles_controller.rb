class ArticlesController < ApplicationController
  layout 'site'
  
  def index
    @articles = Article.all  
    @latest_articles = Article.last(5) 
  end

  def show
    @article = Article.friendly.find(params[:id]) 
    @latest_articles = Article.last(5)
  end

  def article_params
    params.require(:article).permit!
  end

end
