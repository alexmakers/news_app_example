json.array! @articles do |article|
  json.(article, :id, :title, :body, :published)
  json.url(article_path(article, format: :json))
end