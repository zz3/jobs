class BerufsController < ApplicationController
  # GET /berufs
  # GET /berufs.xml
  def index
    @berufs = Beruf.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @berufs }
    end
  end

  # GET /berufs/1
  # GET /berufs/1.xml
  def show
    @beruf = Beruf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @beruf }
    end
  end

  # GET /berufs/new
  # GET /berufs/new.xml
  def new
    @beruf = Beruf.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @beruf }
    end
  end

  # GET /berufs/1/edit
  def edit
    @beruf = Beruf.find(params[:id])
  end

  # POST /berufs
  # POST /berufs.xml
  def create
    @beruf = Beruf.new(params[:beruf])

    respond_to do |format|
      if @beruf.save
        flash[:notice] = 'Beruf was successfully created.'
        format.html { redirect_to(@beruf) }
        format.xml  { render :xml => @beruf, :status => :created, :location => @beruf }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @beruf.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /berufs/1
  # PUT /berufs/1.xml
  def update
    @beruf = Beruf.find(params[:id])

    respond_to do |format|
      if @beruf.update_attributes(params[:beruf])
        flash[:notice] = 'Beruf was successfully updated.'
        format.html { redirect_to(@beruf) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @beruf.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /berufs/1
  # DELETE /berufs/1.xml
  def destroy
    @beruf = Beruf.find(params[:id])
    @beruf.destroy

    respond_to do |format|
      format.html { redirect_to(berufs_url) }
      format.xml  { head :ok }
    end
  end
end
