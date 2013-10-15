class CategoriavsController < ApplicationController
  # GET /categoriavs
  # GET /categoriavs.xml
  def index
    @categoriavs = Categoriav.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categoriavs }
    end
  end

  # GET /categoriavs/1
  # GET /categoriavs/1.xml
  def show
    @categoriav = Categoriav.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @categoriav }
    end
  end

  # GET /categoriavs/new
  # GET /categoriavs/new.xml
  def new
    @categoriav = Categoriav.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @categoriav }
    end
  end

  # GET /categoriavs/1/edit
  def edit
    @categoriav = Categoriav.find(params[:id])
  end

  # POST /categoriavs
  # POST /categoriavs.xml
  def create
    @categoriav = Categoriav.new(params[:categoriav])

    respond_to do |format|
      if @categoriav.save
        format.html { redirect_to(@categoriav, :notice => 'Categoriav was successfully created.') }
        format.xml  { render :xml => @categoriav, :status => :created, :location => @categoriav }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @categoriav.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /categoriavs/1
  # PUT /categoriavs/1.xml
  def update
    @categoriav = Categoriav.find(params[:id])

    respond_to do |format|
      if @categoriav.update_attributes(params[:categoriav])
        format.html { redirect_to(@categoriav, :notice => 'Categoriav was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @categoriav.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /categoriavs/1
  # DELETE /categoriavs/1.xml
  def destroy
    @categoriav = Categoriav.find(params[:id])
    @categoriav.destroy

    respond_to do |format|
      format.html { redirect_to(categoriavs_url) }
      format.xml  { head :ok }
    end
  end
end
