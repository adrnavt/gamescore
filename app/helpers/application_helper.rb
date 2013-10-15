# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	
def post_owner_or_admin?
		if !current_user.blank? && current_user.rol == "admin" or !current_user.blank? && current_user.id == post.user_id
		return true
	end
end
	
	def admin?  
	  if !current_user.blank?
 if current_user.rol == "admin"  
    return true  
  else  
    return false  
  end  
end
  
end  
	def owner?(id)  
  if current_user.id == id  
    return true  
  else  
    return false  
  end  
end  
  
def admin_or_owner?(id)  
  if (admin? || owner?(id))  
    return true  
  else  
    return false  
  end  
end  

end

def logged?(id)  
  if current_user.id == id  
    return true  
  else  
    return false  
  end  
end 