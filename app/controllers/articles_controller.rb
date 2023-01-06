class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new 
    @article  = Article.new
  end

  def create
    @article  = Article.new(title: "...", body:"...")

    if @article.after_save
      redirect_to @article
    else
      render :new, status: :unprocecessable_entity
    end
  end  
end
