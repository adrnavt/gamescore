class NewreleasesController < ApplicationController
  # GET /newreleases
  # GET /newreleases.xml
  def index
    @newrelease = Newrelease.paginate :per_page => 5, :page => params[:page],
                              :order => "created_at DESC"
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @newreleases }
    end
  end

  # GET /newreleases/1
  # GET /newreleases/1.xml
  def show
    @newrelease = Newrelease.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @newrelease }
    end
  end

  # GET /newreleases/new
  # GET /newreleases/new.xml
  def new
   @game = Game.find(params[:game_id])
    @newrelease = Newrelease.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @newrelease }
    end
  end

  # GET /newreleases/1/edit
  def edit
    @newrelease = Newrelease.find(params[:id])
  end

  # POST /newreleases
  # POST /newreleases.xml
  def create
    @game = Game.find(params[:game_id])
    @newrelease = @game.newreleases.build(params[:newrelease])

    respond_to do |format|
      if @newrelease.save
        format.html { redirect_to(@newrelease, :notice => 'Newrelease was successfully created.') }
        format.xml  { render :xml => @newrelease, :status => :created, :location => @newrelease }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @newrelease.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /newreleases/1
  # PUT /newreleases/1.xml
  def update
    @newrelease = Newrelease.find(params[:id])

    respond_to do |format|
      if @newrelease.update_attributes(params[:newrelease])
        format.html { redirect_to(@newrelease, :notice => 'Newrelease was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @newrelease.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /newreleases/1
  # DELETE /newreleases/1.xml
  def destroy
    @newrelease = Newrelease.find(params[:id])
    @newrelease.destroy

    respond_to do |format|
      format.html { redirect_to(newreleases_url) }
      format.xml  { head :ok }
    end
  end
end
