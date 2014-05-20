class PitchsController < ApplicationController
  # GET /pitchs
  # GET /pitchs.json
  def index
    @pitchs = Pitch.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pitchs }
    end
  end

  # GET /pitchs/1
  # GET /pitchs/1.json
  def show
    @pitch = Pitch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pitch }
    end
  end

  # GET /pitchs/new
  # GET /pitchs/new.json
  def new
    @pitch = Pitch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pitch }
    end
  end

  # GET /pitchs/1/edit
  def edit
    @pitch = Pitch.find(params[:id])
  end

  # POST /pitchs
  # POST /pitchs.json
  def create
    @pitch = Pitch.new(params[:pitch])

    respond_to do |format|
      if @pitch.save
        format.html { redirect_to @pitch, notice: 'Pitch submission was successfully created.' }
        format.json { render json: @pitch, status: :created, location: @pitch }
      else
        format.html { render action: "new" }
        format.json { render json: @pitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pitchs/1
  # PUT /pitchs/1.json
  def update
    @pitch = Pitch.find(params[:id])

    respond_to do |format|
      if @pitch.update_attributes(params[:pitch])
        format.html { redirect_to @pitch, notice: 'Pitch submission was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pitchs/1
  # DELETE /pitchs/1.json
  def destroy
    @pitch = Pitch.find(params[:id])
    @pitch.destroy

    respond_to do |format|
      format.html { redirect_to pitchs_url }
      format.json { head :no_content }
    end
  end
end
