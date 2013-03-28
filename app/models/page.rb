class Page < ActiveRecord::Base
  attr_accessible :scrapbook_id
  belongs_to :parent
end
