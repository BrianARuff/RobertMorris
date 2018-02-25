class LoadImagesController < ApplicationController
  before_action :set_load_image, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /load_images
  # GET /load_images.json
  def index
    @load_images = LoadImage.all.order(image: :asc)
  end

  # GET /load_images/1
  # GET /load_images/1.json
  def show
  end

  # GET /load_images/new
  def new
    @load_image = LoadImage.new
  end

  # GET /load_images/1/edit
  def edit
  end

  # POST /load_images
  # POST /load_images.json
  def create
    @load_image = LoadImage.new(load_image_params)

    respond_to do |format|
      if @load_image.save
        format.html { redirect_to @load_image, notice: 'Load image was successfully created.' }
        format.json { render :show, status: :created, location: @load_image }
      else
        format.html { render :new }
        format.json { render json: @load_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /load_images/1
  # PATCH/PUT /load_images/1.json
  def update
    respond_to do |format|
      if @load_image.update(load_image_params)
        format.html { redirect_to @load_image, notice: 'Load image was successfully updated.' }
        format.json { render :show, status: :ok, location: @load_image }
      else
        format.html { render :edit }
        format.json { render json: @load_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /load_images/1
  # DELETE /load_images/1.json
  def destroy
    @load_image.destroy
    respond_to do |format|
      format.html { redirect_to load_images_url, notice: 'Load image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_load_image
      @load_image = LoadImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def load_image_params
      params.require(:load_image).permit(:name, :description, :picture, :image, :user_id, :video)
    end
end
