class AddAuthorToArticles < ActiveRecord::Migration
  def change
    add_reference :authors, :article, index: true
  end
end
