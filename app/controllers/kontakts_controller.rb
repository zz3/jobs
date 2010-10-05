class KontaktsController < ApplicationController
  # GET /kontakts
  # GET /kontakts.xml
  def index
    @kontakts = Kontakt.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kontakts }
    end
  end

  # GET /kontakts/1
  # GET /kontakts/1.xml
  def show
    @kontakt = Kontakt.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kontakt }
    end
  end

  # GET /kontakts/new
  # GET /kontakts/new.xml
  def new
    @kontakt = Kontakt.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kontakt }
    end
  end

  # GET /kontakts/1/edit
  def edit
    @kontakt = Kontakt.find(params[:id])
    @kontaktarts = Kontaktart.all
    
  end

  # POST /kontakts
  # POST /kontakts.xml
  
  def create 
    @bewerbung = Bewerbung.find(params[:bewerbung_id])
    @kontakt = Kontakt.new(params[:kontakt])
    if @kontakt.save
      redirect_to(@bewerbung)
    end
  end
#  def create
#    @kontakt = Kontakt.new(params[:kontakt])
#
#    respond_to do |format|
#      if @kontakt.save
#        flash[:notice] = 'Kontakt was successfully created.'
#        format.html { redirect_to(@kontakt) }
#        format.xml  { render :xml => @kontakt, :status => :created, :location => @kontakt }
#      else
#        format.html { render :action => "new" }
#        format.xml  { render :xml => @kontakt.errors, :status => :unprocessable_entity }
#      end
#    end
#  end

  # PUT /kontakts/1
  # PUT /kontakts/1.xml
  def update
    @kontakt = Kontakt.find(params[:id])

    respond_to do |format|
      if @kontakt.update_attributes(params[:kontakt])
        flash[:notice] = 'Kontakt was successfully updated.'
        format.html { redirect_to(@kontakt) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kontakt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kontakts/1
  # DELETE /kontakts/1.xml
  def destroy
    @kontakt = Kontakt.find(params[:id])
    @kontakt.destroy

    respond_to do |format|
      format.html { redirect_to(kontakts_url) }
      format.xml  { head :ok }
    end
  end
end
