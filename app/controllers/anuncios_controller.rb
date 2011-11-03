class AnunciosController < ApplicationController
  # GET /anuncios
  # GET /anuncios.json
  def index
    @anuncios = Anuncio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @anuncios }
    end
  end

  # GET /anuncios/1
  # GET /anuncios/1.json
  def show
    @anuncio = Anuncio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @anuncio }
    end
  end

  # GET /anuncios/new
  # GET /anuncios/new.json
  def new
    @anuncio = Anuncio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @anuncio }
    end
  end

  # GET /anuncios/1/edit
  def edit
    @anuncio = Anuncio.find(params[:id])
  end

  # POST /anuncios
  # POST /anuncios.json
  def create
    @anuncio = Anuncio.new(params[:anuncio])

    respond_to do |format|
      if @anuncio.save
        format.html { redirect_to @anuncio, notice: 'Anuncio was successfully created.' }
        format.json { render json: @anuncio, status: :created, location: @anuncio }
      else
        format.html { render action: "new" }
        format.json { render json: @anuncio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /anuncios/1
  # PUT /anuncios/1.json
  def update
    @anuncio = Anuncio.find(params[:id])

    respond_to do |format|
      if @anuncio.update_attributes(params[:anuncio])
        format.html { redirect_to @anuncio, notice: 'Anuncio was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @anuncio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anuncios/1
  # DELETE /anuncios/1.json
  def destroy
    @anuncio = Anuncio.find(params[:id])
    @anuncio.destroy

    respond_to do |format|
      format.html { redirect_to anuncios_url }
      format.json { head :ok }
    end
  end
end
