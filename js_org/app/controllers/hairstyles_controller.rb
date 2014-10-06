class HairstylesController < ApplicationController
  before_action :set_hairstyle, only: [:show, :edit, :update, :destroy]

  # GET /hairstyles
  # GET /hairstyles.json
  def index
    @hairstyles = Hairstyle.all
  end

  # GET /hairstyles/1
  # GET /hairstyles/1.json
  def show
  end

  # GET /hairstyles/new
  def new
    @hairstyle = Hairstyle.new
  end

  # GET /hairstyles/1/edit
  def edit
  end

  # POST /hairstyles
  # POST /hairstyles.json
  def create
    @hairstyle = Hairstyle.new(hairstyle_params)

    respond_to do |format|
      if @hairstyle.save
        format.html { redirect_to @hairstyle, notice: 'Hairstyle was successfully created.' }
        format.json { render :show, status: :created, location: @hairstyle }
      else
        format.html { render :new }
        format.json { render json: @hairstyle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hairstyles/1
  # PATCH/PUT /hairstyles/1.json
  def update
    respond_to do |format|
      if @hairstyle.update(hairstyle_params)
        format.html { redirect_to @hairstyle, notice: 'Hairstyle was successfully updated.' }
        format.json { render :show, status: :ok, location: @hairstyle }
      else
        format.html { render :edit }
        format.json { render json: @hairstyle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hairstyles/1
  # DELETE /hairstyles/1.json
  def destroy
    @hairstyle.destroy
    respond_to do |format|
      format.html { redirect_to hairstyles_url, notice: 'Hairstyle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hairstyle
      @hairstyle = Hairstyle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hairstyle_params
      params.require(:hairstyle).permit(:name, :description)
    end
end
