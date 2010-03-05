class PagesController < ApplicationController
  
  def home
    
    @issues = Issue.all
    
    session[:user] = User.find(1)

  end

  def about_us
  end

  def contact
  end

  def features
  end

end
