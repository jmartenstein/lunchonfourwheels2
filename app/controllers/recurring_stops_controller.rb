class RecurringStopsController < ApplicationController
  # GET /recurring_stops
  # GET /recurring_stops.json
  def index
    @recurring_stops = RecurringStop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recurring_stops }
    end
  end

  # GET /recurring_stops/1
  # GET /recurring_stops/1.json
  def show
    @recurring_stop = RecurringStop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recurring_stop }
    end
  end

  # GET /recurring_stops/new
  # GET /recurring_stops/new.json
  def new
    @recurring_stop = RecurringStop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recurring_stop }
    end
  end

  # GET /recurring_stops/1/edit
  def edit
    @recurring_stop = RecurringStop.find(params[:id])
  end

  # POST /recurring_stops
  # POST /recurring_stops.json
  def create
    @recurring_stop = RecurringStop.new(params[:recurring_stop])

    respond_to do |format|
      if @recurring_stop.save
        format.html { redirect_to @recurring_stop, notice: 'Recurring stop was successfully created.' }
        format.json { render json: @recurring_stop, status: :created, location: @recurring_stop }
      else
        format.html { render action: "new" }
        format.json { render json: @recurring_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recurring_stops/1
  # PUT /recurring_stops/1.json
  def update
    @recurring_stop = RecurringStop.find(params[:id])

    respond_to do |format|
      if @recurring_stop.update_attributes(params[:recurring_stop])
        format.html { redirect_to @recurring_stop, notice: 'Recurring stop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recurring_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recurring_stops/1
  # DELETE /recurring_stops/1.json
  def destroy
    @recurring_stop = RecurringStop.find(params[:id])
    @recurring_stop.destroy

    respond_to do |format|
      format.html { redirect_to recurring_stops_url }
      format.json { head :no_content }
    end
  end
end
