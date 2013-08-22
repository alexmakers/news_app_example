class Article < ActiveRecord::Base
  
  has_one :author
  accepts_nested_attributes_for :author

  with_options presence: true do |p|
    p.validates :title
    p.validates :body
  end

  # todo blah
  def published
    created_at
  end

  def to_param
    permalink
  end

  def save
    self.permalink = title.parameterize
    super
  end

  def self.find(param)
    if !param.is_a?(Symbol) && param =~ /[a-z]/
      find_by_permalink(param)
    else
      super
    end
  end

  #ActiveRecord::Base.logger = Logger.new(STDOUT)
  
end
