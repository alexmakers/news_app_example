class AuthorsController < ApplicationController

  def edit
    @article  = Article.find(params[:article_id])
    @author = Author.find(params[:id])
  end

  def new
    @article  = Article.find(params[:article_id])
    @author = Author.new
  end

  #<%= form_for([@article, @author])

end