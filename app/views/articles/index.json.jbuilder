json.array! @articles do |article|
  json.(article, :id, :title, :body)
  json.url(url_for(article))
end