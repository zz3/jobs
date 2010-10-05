class FirmasController < ApplicationController
  # GET /firmas
  # GET /firmas.xml
  def index
    @firmas = Firma.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @firmas }
    end
  end

  # GET /firmas/1
  # GET /firmas/1.xml
  def show
    redirect_to :action => 'edit'
#    @firma = Firma.find(params[:id])
#    @bewerbungs = Bewerbung.find(:all, :conditions => "firma_id = #{@firma.id}")
#
#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @firma }
#    end
  end

  # GET /firmas/new
  # GET /firmas/new.xml
  def new
    @firma = Firma.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @firma }
    end
  end

  # GET /firmas/1/edit
  def edit
    @firma = Firma.find(params[:id])
    @bewerbungs = Bewerbung.find(:all, :conditions => "firma_id = #{@firma.id}")
  end

  # POST /firmas
  # POST /firmas.xml
  def create
    @firma = Firma.new(params[:firma])

    respond_to do |format|
      if @firma.save
        flash[:notice] = 'Firma was successfully created.'
        format.html { redirect_to(@firma) }
        format.xml  { render :xml => @firma, :status => :created, :location => @firma }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @firma.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /firmas/1
  # PUT /firmas/1.xml
  def update
    @firma = Firma.find(params[:id])

    respond_to do |format|
      if @firma.update_attributes(params[:firma])
        flash[:notice] = 'Firma was successfully updated.'
        format.html { redirect_to(@firma) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @firma.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /firmas/1
  # DELETE /firmas/1.xml
  def destroy
    @firma = Firma.find(params[:id])
    @firma.destroy

    respond_to do |format|
      format.html { redirect_to(firmas_url) }
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
     @firmas = Firma.find(
       :all, 
       :order => "#{params[:criterion]}  #{session[:sort_direction]}")
     render :partial => 'table'
   end
end
