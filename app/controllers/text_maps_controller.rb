class TextMapsController < ApplicationController
  before_action :set_text_map, only: [:show, :edit, :update, :destroy]

  # GET /text_maps
  # GET /text_maps.json
  def index
    @text_maps = TextMap.all
    @text_map = TextMap.new
  end

  # GET /text_maps/1
  # GET /text_maps/1.json
  def show
    @text_map = TextMap.find(params[:id])
  end

  # GET /text_maps/new
  def new
    @text_map = TextMap.new
  end

  # GET /text_maps/1/edit
  def edit
  end

  # POST /text_maps
  # POST /text_maps.json
  def create
    @text_map = TextMap.new(text_map_params)

    respond_to do |format|
      if @text_map.save
        format.html { redirect_to @text_map, notice: 'Text map was successfully created.' }
        format.json { render action: 'show', status: :created, location: @text_map }
      else
        format.html { render action: 'new' }
        format.json { render json: @text_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /text_maps/1
  # PATCH/PUT /text_maps/1.json
  def update
    respond_to do |format|
      if @text_map.update(text_map_params)
        format.html { redirect_to @text_map, notice: 'Text map was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @text_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_maps/1
  # DELETE /text_maps/1.json
  def destroy
    @text_map.destroy
    respond_to do |format|
      format.html { redirect_to text_maps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_map
      @text_map = TextMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def text_map_params
      params.require(:text_map).permit(:text)
    end
end
