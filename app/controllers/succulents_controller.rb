class SucculentsController < ApplicationController
  before_action :set_succulent, only: %i[ show edit update destroy ]

  # GET /succulents or /succulents.json
  def index
    @succulents = Succulent.all
  end

  # GET /succulents/1 or /succulents/1.json
  def show
  end

  # GET /succulents/new
  def new
    @succulent = Succulent.new
  end

  # GET /succulents/1/edit
  def edit
  end

  # POST /succulents or /succulents.json
  def create
    @succulent = Succulent.new(succulent_params)

    respond_to do |format|
      if @succulent.save
        format.html { redirect_to @succulent, notice: "Succulent was successfully created." }
        format.json { render :show, status: :created, location: @succulent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @succulent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /succulents/1 or /succulents/1.json
  def update
    respond_to do |format|
      if @succulent.update(succulent_params)
        format.html { redirect_to @succulent, notice: "Succulent was successfully updated." }
        format.json { render :show, status: :ok, location: @succulent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @succulent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /succulents/1 or /succulents/1.json
  def destroy
    @succulent.destroy
    respond_to do |format|
      format.html { redirect_to succulents_url, notice: "Succulent was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_succulent
      @succulent = Succulent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def succulent_params
      params.require(:succulent).permit(:name)
    end
end
