class RegimesController < ApplicationController
  # GET /regimes
  # GET /regimes.json
  def index
    @regimes = Regime.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @regimes }
    end
  end

  # GET /regimes/1
  # GET /regimes/1.json
  def show
    @regime = Regime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @regime }
    end
  end

  # GET /regimes/new
  # GET /regimes/new.json
  def new
    @regime = Regime.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @regime }
    end
  end

  # GET /regimes/1/edit
  def edit
    @regime = Regime.find(params[:id])
  end

  # POST /regimes
  # POST /regimes.json
  def create
    @regime = Regime.new(params[:regime])

    respond_to do |format|
      if @regime.save
        format.html { redirect_to @regime, notice: 'Regime was successfully created.' }
        format.json { render json: @regime, status: :created, location: @regime }
      else
        format.html { render action: "new" }
        format.json { render json: @regime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /regimes/1
  # PUT /regimes/1.json
  def update
    @regime = Regime.find(params[:id])

    respond_to do |format|
      if @regime.update_attributes(params[:regime])
        format.html { redirect_to @regime, notice: 'Regime was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @regime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regimes/1
  # DELETE /regimes/1.json
  def destroy
    @regime = Regime.find(params[:id])
    @regime.destroy

    respond_to do |format|
      format.html { redirect_to regimes_url }
      format.json { head :ok }
    end
  end
end
