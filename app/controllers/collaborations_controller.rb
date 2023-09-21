class CollaborationsController < ApplicationController
  before_action :set_collaboration, only: %i[ show edit update destroy ]

  # GET /collaborations or /collaborations.json
  def index
    @collaborations = Collaboration.all
  end

  # GET /collaborations/1 or /collaborations/1.json
  def show
  end

  # GET /collaborations/new
  def new
    @collaboration = Collaboration.new
  end

  # GET /collaborations/1/edit
  def edit
  end

  # POST /collaborations or /collaborations.json
  def create
    @collaboration = Collaboration.new(collaboration_params)

    respond_to do |format|
      if @collaboration.save
        format.html { redirect_to collaboration_url(@collaboration), notice: "Collaboration was successfully created." }
        format.json { render :show, status: :created, location: @collaboration }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @collaboration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collaborations/1 or /collaborations/1.json
  def update
    respond_to do |format|
      if @collaboration.update(collaboration_params)
        format.html { redirect_to collaboration_url(@collaboration), notice: "Collaboration was successfully updated." }
        format.json { render :show, status: :ok, location: @collaboration }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @collaboration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collaborations/1 or /collaborations/1.json
  def destroy
    @collaboration.destroy

    respond_to do |format|
      format.html { redirect_to collaborations_url, notice: "Collaboration was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collaboration
      @collaboration = Collaboration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def collaboration_params
      params.require(:collaboration).permit(:name, :description, photos: [])
    end
end
