class UsersController < ApplicationController  
  #before_filter :require_user


  def index

if current_user.rol == "admin"
      @users = User.paginate :per_page => 8, :page => params[:page],
                             :order => "username DESC"
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @users }
      end
    else
     redirect_to root_path
      flash[:error] = "#{current_user.username}, permiso denegado"
    end
  end

def new
      @user = User.new
      respond_to do |format|
        format.html 
      end
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Registro exitoso: #{@user.username}."

      redirect_to :action => 'show', :id => @user.id
    else
      render :action => "new"
    end
  end

  def edit
    @user = User.find(params[:id])
    if current_user.rol == "admin" or current_user.id == @user.id 
      respond_to do |format|
        format.html 
      end

    else
      redirect_to root_path
      flash[:error] = "#{current_user.username}, permiso denegado"
    end

  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(params[:user])
        flash[:notice] = "Usuario actualizado exitosamente: #{@user.username}."

        format.html { redirect_to(user_path(current_user)) }

        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end

  private
  def administrador
    if @current_user.rol == "admin"
    end
  end
end
