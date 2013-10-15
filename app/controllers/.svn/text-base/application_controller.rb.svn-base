# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.


class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details



 helper_method :current_user_session, :current_user
 filter_parameter_logging :password, :password_confirmation
 before_filter :sesion
 

 private
 def admin_or_owner_required(id)  
  unless current_user.id == id || current_user.rol == "admin"
    redirect_to '/'  
  end  
end 
  def es_admin 
    if !current_user == nil?
      if !current_user.rol == "admin"
        redirect_to root_path
        flash[:error] = "#{current_user.username}, permiso denegado"
      end
      
    else
      redirect_to root_path
      flash[:error] = "inicie sesión para continuar"
    end
  end
  
   def current_user_session
     return @current_user_session if defined?(@current_user_session)
     @current_user_session = UserSession.find
   end

   def current_user
     return @current_user if defined?(@current_user)
     @current_user = current_user_session && current_user_session.record
   end
   
  def logged_in?
      current_user 
   end
   
  
   
   def sesion
      @user_session = UserSession.new
    end
   
  
   
    def redirect_to_stored
       if return_to = session[:return_to]
         session[:return_to]=nil
         redirect_to(return_to)
       else
         redirect_to root_path
       end
     end
   

   def require_user
     unless current_user
       store_location
       flash[:error] = "Debes de ingresar al sistema para poder ver esta pagina."
       redirect_to new_user_session_url
       return false
     end
   end

   def require_no_user
     if current_user
       store_location
       flash[:notice] = "Debes de salir del sistema para poder ver esta pagina."
       redirect_to account_url
       return false
     end
   end

   def store_location
     session[:return_to] = request.request_uri
   end

   def redirect_back_or_default(default)
     redirect_to(session[:return_to] || default)
     session[:return_to] = nil
   end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
