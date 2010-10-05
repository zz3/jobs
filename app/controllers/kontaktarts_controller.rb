class KontaktartsController < ApplicationController
  # GET /kontaktarts
  # GET /kontaktarts.xml
  def index
    @kontaktarts = Kontaktart.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kontaktarts }
    end
  end

  # GET /kontaktarts/1
  # GET /kontaktarts/1.xml
  def show
    @kontaktart = Kontaktart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kontaktart }
    end
  end

  # GET /kontaktarts/new
  # GET /kontaktarts/new.xml
  def new
    @kontaktart = Kontaktart.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kontaktart }
    end
  end

  # GET /kontaktarts/1/edit
  def edit
    @kontaktart = Kontaktart.find(params[:id])
  end

  # POST /kontaktarts
  # POST /kontaktarts.xml
  def create
    @kontaktart = Kontaktart.new(params[:kontaktart])

    respond_to do |format|
      if @kontaktart.save
        flash[:notice] = 'Kontaktart was successfully created.'
        format.html { redirect_to(@kontaktart) }
        format.xml  { render :xml => @kontaktart, :status => :created, :location => @kontaktart }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kontaktart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kontaktarts/1
  # PUT /kontaktarts/1.xml
  def update
    @kontaktart = Kontaktart.find(params[:id])

    respond_to do |format|
      if @kontaktart.update_attributes(params[:kontaktart])
        flash[:notice] = 'Kontaktart was successfully updated.'
        format.html { redirect_to(@kontaktart) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kontaktart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kontaktarts/1
  # DELETE /kontaktarts/1.xml
  def destroy
    @kontaktart = Kontaktart.find(params[:id])
    @kontaktart.destroy

    respond_to do |format|
      format.html { redirect_to(kontaktarts_url) }
      format.xml  { head :ok }
    end
  end
  
  def test
    
  end
end
