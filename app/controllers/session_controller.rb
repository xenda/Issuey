class SessionController < ApplicationController
  
  def login
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    @db_user = User.find_by_email_and_password(@user.email,@user.password)
    if @db_user
      session[:current_user] = @db_user.id
      flash[:notice] = "Bienvenido #{@db_user.email}"
      if session[:last_url]
        redirect_to session[:last_url] 
      else
        redirect_to root_path
      end
      
    else
      session[:current_user] = nil
      flash[:error] = "Datos inválidos"
      render :action => :login
    end
  end

  def destroy
    session[:current_user] = nil
    redirect_to root_path
  end

end
