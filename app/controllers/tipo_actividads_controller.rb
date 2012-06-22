class TipoActividadsController < ApplicationController
  # GET /tipo_actividads
  # GET /tipo_actividads.json
  def index
    @tipo_actividads = TipoActividad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_actividads }
    end
  end

  # GET /tipo_actividads/1
  # GET /tipo_actividads/1.json
  def show
    @tipo_actividad = TipoActividad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_actividad }
    end
  end

  # GET /tipo_actividads/new
  # GET /tipo_actividads/new.json
  def new
    @tipo_actividad = TipoActividad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_actividad }
    end
  end

  # GET /tipo_actividads/1/edit
  def edit
    @tipo_actividad = TipoActividad.find(params[:id])
  end

  # POST /tipo_actividads
  # POST /tipo_actividads.json
  def create
    @tipo_actividad = TipoActividad.new(params[:tipo_actividad])

    respond_to do |format|
      if @tipo_actividad.save
        format.html { redirect_to @tipo_actividad, notice: 'Tipo actividad was successfully created.' }
        format.json { render json: @tipo_actividad, status: :created, location: @tipo_actividad }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_actividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_actividads/1
  # PUT /tipo_actividads/1.json
  def update
    @tipo_actividad = TipoActividad.find(params[:id])

    respond_to do |format|
      if @tipo_actividad.update_attributes(params[:tipo_actividad])
        format.html { redirect_to @tipo_actividad, notice: 'Tipo actividad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_actividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_actividads/1
  # DELETE /tipo_actividads/1.json
  def destroy
    @tipo_actividad = TipoActividad.find(params[:id])
    @tipo_actividad.destroy

    respond_to do |format|
      format.html { redirect_to tipo_actividads_url }
      format.json { head :no_content }
    end
  end
end
