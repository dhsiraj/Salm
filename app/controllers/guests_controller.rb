class GuestsController < ApplicationController
  # GET /guests
  # GET /guests.xml
  def index
    @guests = Guest.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @guests }
    end
  end

  # GET /guests/1
  # GET /guests/1.xml
  def show
    @guest = Guest.find(params[:id])
	@accomodations = Accomodation.find(:all, :conditions => ["guest_id = ?", params[:id]])  
	@accomodation = Accomodation.new
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @guest }
    end
  end

  # GET /guests/new
  # GET /guests/new.xml
  def new
    @guest = Guest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @guest }
    end
  end

  # GET /guests/1/edit
  def edit
    @guest = Guest.find(params[:id])
  end

  # POST /guests
  # POST /guests.xml
  def create
    @guest = Guest.new(params[:guest])

    respond_to do |format|
      if @guest.save
        format.html { redirect_to(@guest, :notice => 'Guest was successfully created.') }
        format.xml  { render :xml => @guest, :status => :created, :location => @guest }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @guest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /guests/1
  # PUT /guests/1.xml
  def update
    @guest = Guest.find(params[:id])

    respond_to do |format|
      if @guest.update_attributes(params[:guest])
        format.html { redirect_to(@guest, :notice => 'Guest was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @guest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /guests/1
  # DELETE /guests/1.xml
  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy

    respond_to do |format|
      format.html { redirect_to(guests_url) }
      format.xml  { head :ok }
    end
  end
  
  def guest_lists
    #@guests = Guest.all
    if params[:agent] != nil
      @guests = Guest.find(:all, :conditions => ["arr_date >= ? and arr_date <= ?", params[:agent][:from_date].to_datetime, params[:agent][:to_date].to_datetime], :order => "arr_date desc")
      respond_to do |format|
	format.html # this handles normal requests asking for html
	format.js
      end
    end 
  end
end
