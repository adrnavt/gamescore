class User < ActiveRecord::Base
  ajaxful_rater
  acts_as_authentic
  has_many :posts  
  has_many :topics 
  has_many :rates
  has_attached_file :avatar, 
  :styles => { :large => "300x300>", :medium => "150x150>", :thumb => "50x50#" },
  :url => "/avatars/:id/:style.:extension" ,
  :path => ":rails_root/public/avatars/:id/:style.:extension"
  

  
  validates_presence_of :nombre, :on => :update, :message => "can't be blank"
  #validates_presence_of :rol, :on => :create, :message => "can't be blank"
  validates_presence_of :apellido_p, :on => :update, :message => "can't be blank"
  #validates_presence_of :apellido_m, :on => :update, :message => "can't be blank"
  validates_presence_of :username, :on => :create, :message => "can't be blank"
  validates_presence_of :email, :on => :create, :message => "can't be blank"
  validates_uniqueness_of :username, :on => :create, :message => "already exist"
  validates_uniqueness_of :email, :on => :create, :message => "already exist"
  
  
  
  def deliver_password_reset_instructions!  
  reset_perishable_token!  
  Notifier.deliver_password_reset_instructions(self)  
  end
 
  def show  
  @user = User.find(params[:id])  
end  
  
  
end
