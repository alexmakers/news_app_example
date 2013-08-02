class ArticlesController < ApplicationController
  
  respond_to :html, :json

  def index
    @articles = Article.all
    
    # respond_with @articles do |format|
    #       format.html
    #       format.json { render json: @articles.as_json(only: [:id, :title, :body]) }
    #     end
  end
  
  def new
  end
  
  def create
    @article.featured
    
    @article = Article.new(params[:article].permit(:title, :body))
    
    if @article.save
      flash[:message] = 'Successfully created'
      redirect_to action: 'index'
    else
      render :new
    end
  end
  
end