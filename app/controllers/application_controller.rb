# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details


  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def logged_only
    unless logged_in?
      session[:last_url] = request.url
      redirect_to url_for(:controller=>"session",:action=>"login")
    end
  end
  
  def logged_in?
    session[:current_user]
  end
  
end