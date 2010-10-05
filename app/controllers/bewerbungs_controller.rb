class BewerbungsController < ApplicationController
  # GET /bewerbungs
  # GET /bewerbungs.xml
  def index
    if session[:only_actives_checked].nil?()
      session[:only_actives_checked] = true
    end
    if session[:only_actives_checked] == true
      @bewerbungs = Bewerbung.only_active()
    else
      @bewerbungs = Bewerbung.all()
    end
    
    @param = params[:only_actives_checked]
    @s = session[:only_actives_checked]
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bewerbungs }
    end
  end

  # GET /bewerbungs/1
  # GET /bewerbungs/1.xml
  def show
    @bewerbung = Bewerbung.find(params[:id])
    @kontaktarts = Kontaktart.all
    @kontakts = Kontakt.find(
      :all,
      :conditions => ["bewerbung_id = #{@bewerbung.id}"],
      :order => 'created_at ASC'
       )
    @kontakt = Kontakt.new

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bewerbung }
    end
  end

  # GET /bewerbungs/new
  # GET /bewerbungs/new.xml
  def new
    @firma = Firma.all
    @bewerbung = Bewerbung.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bewerbung }
    end
  end

  # GET /bewerbungs/1/edit
  def edit
    @bewerbung = Bewerbung.find(params[:id])
  end

  # POST /bewerbungs
  # POST /bewerbungs.xml
  def create
    @bewerbung = Bewerbung.new(params[:bewerbung])

    respond_to do |format|
      if @bewerbung.save
        flash[:notice] = 'Bewerbung was successfully created.'
        format.html { redirect_to(@bewerbung) }
        format.xml  { render :xml => @bewerbung, :status => :created, :location => @bewerbung }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bewerbung.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bewerbungs/1
  # PUT /bewerbungs/1.xml
  def update
    @bewerbung = Bewerbung.find(params[:id])

    respond_to do |format|
      if @bewerbung.update_attributes(params[:bewerbung])
        flash[:notice] = 'Bewerbung was successfully updated.'
        format.html { redirect_to(@bewerbung) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bewerbung.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bewerbungs/1
  # DELETE /bewerbungs/1.xml
  def destroy
    @bewerbung = Bewerbung.find(params[:id])
    @bewerbung.destroy

    respond_to do |format|
      format.html { redirect_to(bewerbungs_url) }
      format.xml  { head :ok }
    end
  end
  
  def sort
    if session[:sort_direction].nil?()
      session[:sort_direction] = 'ASC'
    elsif session[:sort_direction] == 'DESC'
      session[:sort_direction] = 'ASC'
    else
      session[:sort_direction] = 'DESC'
    end
    if (session[:only_actives_checked] == false)
      @bewerbungs = Bewerbung.find(
            :all, 
            :order => "#{params[:criterion]}  #{session[:sort_direction]}")
    else
      @bewerbungs = Bewerbung.only_active("#{params[:criterion]}  #{session[:sort_direction]}")
    end
    
    render :partial => 'table'
  end
  
  def toggle_active
    session[:only_actives_checked] = session[:only_actives_checked] == false ? true : false

    @param = params[:only_actives_checked]
    @s = session[:only_actives_checked]
    
    if session[:only_actives_checked] == true
      @bewerbungs = Bewerbung.only_active
    else
      @bewerbungs = Bewerbung.all
    end
    
    render :partial => 'table'
  end
  
  
end
