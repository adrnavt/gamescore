class UserSessionsController < ApplicationController
  
  
  
  def new
    @user_session = UserSession.new

    respond_to do |format|
      format.html 
    end
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Bienvenido al sistema"
          redirect_to_stored
    else
     
  redirect_to root_path
      flash[:error] = "Usuario o contraseña incorrectos"
    end
  end
  
  def destroy  
    @user_session = UserSession.find  
    @user_session.destroy  
    flash[:error] = "Has salido del sistema."  
    redirect_to root_url  
  end
end
