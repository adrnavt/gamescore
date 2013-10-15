class ConsolasController < ApplicationController
  # GET /consolas
  # GET /consolas.xml
  def index
    @consolas = Consola.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @consolas }
    end
  end

  # GET /consolas/1
  # GET /consolas/1.xml
  def show
    @consola = Consola.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @consola }
    end
  end

  # GET /consolas/new
  # GET /consolas/new.xml
  def new
    @consola = Consola.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @consola }
    end
  end

  # GET /consolas/1/edit
  def edit
    @consola = Consola.find(params[:id])
  end

  # POST /consolas
  # POST /consolas.xml
  def create
    @consola = Consola.new(params[:consola])

    respond_to do |format|
      if @consola.save
        format.html { redirect_to(@consola, :notice => 'Consola was successfully created.') }
        format.xml  { render :xml => @consola, :status => :created, :location => @consola }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @consola.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /consolas/1
  # PUT /consolas/1.xml
  def update
    @consola = Consola.find(params[:id])

    respond_to do |format|
      if @consola.update_attributes(params[:consola])
        format.html { redirect_to(@consola, :notice => 'Consola was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @consola.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /consolas/1
  # DELETE /consolas/1.xml
  def destroy
    @consola = Consola.find(params[:id])
    @consola.destroy

    respond_to do |format|
      format.html { redirect_to(consolas_url) }
      format.xml  { head :ok }
    end
  end
end
