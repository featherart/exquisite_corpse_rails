class CorpsesController < ApplicationController
  # GET /corpses
  # GET /corpses.json
  def index
    @corpses = Corpse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @corpses }
    end
  end

  # GET /corpses/1
  # GET /corpses/1.json
  def show
    @corpse = Corpse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @corpse }
    end
  end

  # GET /corpses/new
  # GET /corpses/new.json
  def new
    @corpse = Corpse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @corpse }
    end
  end

  # GET /corpses/1/edit
  def edit
    @corpse = Corpse.find(params[:id])
  end

  # POST /corpses
  # POST /corpses.json
  def create
    @corpse = Corpse.new(params[:corpse])

    respond_to do |format|
      if @corpse.save
        format.html { redirect_to @corpse, notice: 'Corpse was successfully created.' }
        format.json { render json: @corpse, status: :created, location: @corpse }
      else
        format.html { render action: "new" }
        format.json { render json: @corpse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /corpses/1
  # PUT /corpses/1.json
  def update
    @corpse = Corpse.find(params[:id])

    respond_to do |format|
      if @corpse.update_attributes(params[:corpse])
        format.html { redirect_to @corpse, notice: 'Corpse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @corpse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corpses/1
  # DELETE /corpses/1.json
  def destroy
    @corpse = Corpse.find(params[:id])
    @corpse.destroy

    respond_to do |format|
      format.html { redirect_to corpses_url }
      format.json { head :no_content }
    end
  end
end
