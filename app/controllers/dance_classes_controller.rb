class DanceClassesController < ApplicationController
  before_action :set_dance_class, only: %i[ show edit update destroy ]

  # GET /dance_classes or /dance_classes.json
  def index
    @dance_classes = DanceClass.all
  end

  # GET /dance_classes/1 or /dance_classes/1.json
  def show
  end

  # GET /dance_classes/new
  def new
    @dance_class = DanceClass.new
  end

  # GET /dance_classes/1/edit
  def edit
  end

  # POST /dance_classes or /dance_classes.json
  def create
    @dance_class = DanceClass.new(dance_class_params)

    respond_to do |format|
      if @dance_class.save
        format.html { redirect_to @dance_class, notice: "Dance class was successfully created." }
        format.json { render :show, status: :created, location: @dance_class }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dance_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dance_classes/1 or /dance_classes/1.json
  def update
    respond_to do |format|
      if @dance_class.update(dance_class_params)
        format.html { redirect_to @dance_class, notice: "Dance class was successfully updated." }
        format.json { render :show, status: :ok, location: @dance_class }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dance_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dance_classes/1 or /dance_classes/1.json
  def destroy
    @dance_class.destroy!

    respond_to do |format|
      format.html { redirect_to dance_classes_path, status: :see_other, notice: "Dance class was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dance_class
      @dance_class = DanceClass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dance_class_params
      params.require(:dance_class).permit(:name, :description, :schedule)
    end
end
