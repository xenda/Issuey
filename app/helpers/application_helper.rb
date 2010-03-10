# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def show_title
    yield :title
  end
  
  def title(name)
    content_for :title do 
          name
      end
  end
end
