class OneTimeStopsController < ApplicationController
  # GET /one_time_stops
  # GET /one_time_stops.json
  def index
    @one_time_stops = OneTimeStop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @one_time_stops }
    end
  end

  # GET /one_time_stops/1
  # GET /one_time_stops/1.json
  def show
    @one_time_stop = OneTimeStop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @one_time_stop }
    end
  end

  # GET /one_time_stops/new
  # GET /one_time_stops/new.json
  def new
    @one_time_stop = OneTimeStop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @one_time_stop }
    end
  end

  # GET /one_time_stops/1/edit
  def edit
    @one_time_stop = OneTimeStop.find(params[:id])
  end

  # POST /one_time_stops
  # POST /one_time_stops.json
  def create
    @one_time_stop = OneTimeStop.new(params[:one_time_stop])

    respond_to do |format|
      if @one_time_stop.save
        format.html { redirect_to @one_time_stop, notice: 'One time stop was successfully created.' }
        format.json { render json: @one_time_stop, status: :created, location: @one_time_stop }
      else
        format.html { render action: "new" }
        format.json { render json: @one_time_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /one_time_stops/1
  # PUT /one_time_stops/1.json
  def update
    @one_time_stop = OneTimeStop.find(params[:id])

    respond_to do |format|
      if @one_time_stop.update_attributes(params[:one_time_stop])
        format.html { redirect_to @one_time_stop, notice: 'One time stop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @one_time_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /one_time_stops/1
  # DELETE /one_time_stops/1.json
  def destroy
    @one_time_stop = OneTimeStop.find(params[:id])
    @one_time_stop.destroy

    respond_to do |format|
      format.html { redirect_to one_time_stops_url }
      format.json { head :no_content }
    end
  end
end
