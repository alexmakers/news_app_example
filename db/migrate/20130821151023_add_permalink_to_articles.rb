class AddPermalinkToArticles < ActiveRecord::Migration
  def up
    add_column :articles, :permalink, :string
    add_index :articles, :permalink

    Article.all.each do |article|
      article.permalink = article.title.parameterize
      article.save
    end    
  end

  def down
    remove_column :articles, :permalink
  end
end
