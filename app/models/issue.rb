class Issue < ActiveRecord::Base
  validates_presence_of :title
  
  has_many :comments
  
  has_attached_file :screenshot
  
  def to_param
    self.title ||= ""
    "#{id}-#{self.title.parameterize}"
  end
  
end
