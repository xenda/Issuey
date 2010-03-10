class Issue < ActiveRecord::Base
  validates_presence_of :title
  
  has_attached_file :screenshot
  
end
