class CraftsController < ApplicationController
  before_action :set_craft, only: %i[ show edit update destroy ]

  # GET /crafts or /crafts.json
  def index
    @crafts = Craft.all
  end

  # GET /crafts/1 or /crafts/1.json
  def show
  end

  # GET /crafts/new
  def new
    @craft = Craft.new
  end

  # GET /crafts/1/edit
  def edit
  end

  # POST /crafts or /crafts.json
  def create
    @craft = Craft.new(craft_params)

    respond_to do |format|
      if @craft.save
        format.html { redirect_to craft_url(@craft), notice: "Craft was successfully created." }
        format.json { render :show, status: :created, location: @craft }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @craft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crafts/1 or /crafts/1.json
  def update
    respond_to do |format|
      if @craft.update(craft_params)
        format.html { redirect_to craft_url(@craft), notice: "Craft was successfully updated." }
        format.json { render :show, status: :ok, location: @craft }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @craft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crafts/1 or /crafts/1.json
  def destroy
    @craft.destroy

    respond_to do |format|
      format.html { redirect_to crafts_url, notice: "Craft was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_craft
      @craft = Craft.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def craft_params
      params.require(:craft).permit(:name, :description, photos: [])
    end
end
