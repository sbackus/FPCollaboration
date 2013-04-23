class Page < ActiveRecord::Base
  attr_accessible :scrapbook_id, :html
  belongs_to :parent
end
