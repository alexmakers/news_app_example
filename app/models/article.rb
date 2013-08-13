class Article < ActiveRecord::Base
  
  with_options presence: true do |p|
    p.validates :title
    p.validates :body
  end

  def published
    created_at
  end
  
end
