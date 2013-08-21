class Article < ActiveRecord::Base
  
  has_one :author
  accepts_nested_attributes_for :author
  
  with_options presence: true do |p|
    p.validates :title
    p.validates :body
  end

  def published
    created_at
  end

  #ActiveRecord::Base.logger = Logger.new(STDOUT)
  
end
