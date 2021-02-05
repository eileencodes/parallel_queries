class RosesController < ApplicationController
  before_action :set_rose, only: %i[ show edit update destroy ]

  # GET /roses or /roses.json
  def index
    @roses = Rose.all
  end

  # GET /roses/1 or /roses/1.json
  def show
  end

  # GET /roses/new
  def new
    @rose = Rose.new
  end

  # GET /roses/1/edit
  def edit
  end

  # POST /roses or /roses.json
  def create
    @rose = Rose.new(rose_params)

    respond_to do |format|
      if @rose.save
        format.html { redirect_to @rose, notice: "Rose was successfully created." }
        format.json { render :show, status: :created, location: @rose }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roses/1 or /roses/1.json
  def update
    respond_to do |format|
      if @rose.update(rose_params)
        format.html { redirect_to @rose, notice: "Rose was successfully updated." }
        format.json { render :show, status: :ok, location: @rose }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roses/1 or /roses/1.json
  def destroy
    @rose.destroy
    respond_to do |format|
      format.html { redirect_to roses_url, notice: "Rose was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rose
      @rose = Rose.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rose_params
      params.require(:rose).permit(:name)
    end
end
