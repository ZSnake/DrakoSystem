class ActividadsController < ApplicationController
  # GET /actividads
  # GET /actividads.json
  def index
    @actividads = Actividad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @actividads }
    end
  end

  # GET /actividads/1
  # GET /actividads/1.json
  def show
    @actividad = Actividad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @actividad }
    end
  end

  # GET /actividads/new
  # GET /actividads/new.json
  def new
    @actividad = Actividad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @actividad }
    end
  end

  # GET /actividads/1/edit
  def edit
    @actividad = Actividad.find(params[:id])
  end

  # POST /actividads
  # POST /actividads.json
  def create
    @actividad = Actividad.new(params[:actividad])

    respond_to do |format|
      if @actividad.save
        format.html { redirect_to @actividad, notice: 'Actividad was successfully created.' }
        format.json { render json: @actividad, status: :created, location: @actividad }
      else
        format.html { render action: "new" }
        format.json { render json: @actividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /actividads/1
  # PUT /actividads/1.json
  def update
    @actividad = Actividad.find(params[:id])

    respond_to do |format|
      if @actividad.update_attributes(params[:actividad])
        format.html { redirect_to @actividad, notice: 'Actividad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @actividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actividads/1
  # DELETE /actividads/1.json
  def destroy
    @actividad = Actividad.find(params[:id])
    @actividad.destroy

    respond_to do |format|
      format.html { redirect_to actividads_url }
      format.json { head :no_content }
    end
  end

end
