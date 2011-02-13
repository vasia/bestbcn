class ArticlesController < ApplicationController
  
  def index
    @articles = Article.find(:all)
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  # Creating a new one
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(params[:article])
    
    if @article.save
      flash[:notice] = "The article has been created."
      redirect_to @article
    else
      flash[:error] = "Error creating the article"
      render :action => "new"
    end
  end  
end
