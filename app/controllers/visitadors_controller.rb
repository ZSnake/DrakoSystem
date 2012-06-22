class VisitadorsController < ApplicationController
  # GET /visitadors
  # GET /visitadors.json
  before_filter :authenticate_user!
  before_filter :points 
  def points
    Visitador.all.each do |v|
      if visitador.puntaje
        v.puntos
        v.save
      end
    end
  end
  def index
    @visitadors = Visitador.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @visitadors }
    end
  end

  # GET /visitadors/1
  # GET /visitadors/1.json
  def show
    @visitador = Visitador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @visitador }
    end
  end

  # GET /visitadors/new
  # GET /visitadors/new.json
  def new
    @visitador = Visitador.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @visitador }
    end
  end

  # GET /visitadors/1/edit
  def edit
    @visitador = Visitador.find(params[:id])
  end

  # POST /visitadors
  # POST /visitadors.json
  def create
    @visitador = Visitador.new(params[:visitador])

    respond_to do |format|
      if @visitador.save
        format.html { redirect_to @visitador, notice: 'Visitador was successfully created.' }
        format.json { render json: @visitador, status: :created, location: @visitador }
      else
        format.html { render action: "new" }
        format.json { render json: @visitador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /visitadors/1
  # PUT /visitadors/1.json
  def update
    @visitador = Visitador.find(params[:id])

    respond_to do |format|
      if @visitador.update_attributes(params[:visitador])
        format.html { redirect_to @visitador, notice: 'Visitador was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @visitador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visitadors/1
  # DELETE /visitadors/1.json
  def destroy
    @visitador = Visitador.find(params[:id])
    @visitador.destroy

    respond_to do |format|
      format.html { redirect_to visitadors_url }
      format.json { head :no_content }
    end
  end
end
