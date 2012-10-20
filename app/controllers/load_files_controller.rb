class LoadFilesController < ApplicationController
  # GET /load_files
  # GET /load_files.json
  def index
     if !params[:search_word].nil?
        redirect_to products_path(:search_word =>params[:search_word]), :notice => "Resultados para: #{params[:search_word]}"
      else
    @load_files = LoadFile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @load_files }
    end
  end
  end

  # GET /load_files/1
  # GET /load_files/1.json
  def show
    @load_file = LoadFile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @load_file }
    end
  end

  # GET /load_files/new
  # GET /load_files/new.json
  def new
    if !params[:search_word].nil?
      redirect_to products_path(:search_word =>params[:search_word]), :notice => "Resultados para: #{params[:search_word]}"
    else
    @load_file = LoadFile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @load_file }
    end
  end
  end

  # GET /load_files/1/edit
  def edit
    @load_file = LoadFile.find(params[:id])
  end

  # POST /load_files
  # POST /load_files.json
  def create
    @load_file = LoadFile.new(params[:load_file])

    respond_to do |format|
      if @load_file.save
        @load_files = LoadFile.find(:all)
       # @notice = "Fichero agregado correctamente al sistema."
        format.html { redirect_to(:action => :index, :notice => 'Fichero agregado correctamente') and return }
      # redirect_to(:action => :index) and return
        format.json { render json: @load_file, status: :created, location: @load_file }
      else
        format.html { render action: "new" }
        format.json { render json: @load_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /load_files/1
  # PUT /load_files/1.json
  def update
    @load_file = LoadFile.find(params[:id])

    respond_to do |format|
      if @load_file.update_attributes(params[:load_file])
        format.html { redirect_to @load_file, notice: 'Load file was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @load_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /load_files/1
  # DELETE /load_files/1.json
  def destroy
    @load_file = LoadFile.find(params[:id])
    @load_file.destroy

    respond_to do |format|
      format.html { redirect_to load_files_url }
      format.json { head :no_content }
    end
  end
end
