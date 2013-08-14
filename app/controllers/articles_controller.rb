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
    @article = Article.new(params[:article].permit(:title, :body))
    @article.save

    respond_with(@article, status: 201) do |format|
      if @article.valid?
        format.html { 
          flash[:message] = 'Successfully created'
          redirect_to action: 'index'
        }
      else
        format.html { render :new }
      end
    end
  end

  def show
    @article = Article.find(params[:id])
  end
  
end