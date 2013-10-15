class PublicaController < ApplicationController
  def index
  	 @user_session = UserSession.new
  end

  def contacto
  	
  end
	
  def agradecimiento
  end
  
  def send_mail
  	Emailer::deliver_contact_email(params[:email])
  	redirect_to :controller => "publica", :action => "agradecimiento"
  end
end

	 