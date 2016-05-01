class LambDataController < ApplicationController
  before_action :set_lamb_datum, only: [:show, :edit, :update, :destroy]

  # GET /lamb_data
  # GET /lamb_data.json
  def index
    @lamb_data = LambDatum.all
  end

  # GET /lamb_data/1
  # GET /lamb_data/1.json
  def show
  end

  # GET /lamb_data/new
  def new
    @lamb_datum = LambDatum.new
  end

  # GET /lamb_data/1/edit
  def edit
  end

  # POST /lamb_data
  # POST /lamb_data.json
  def create
    @lamb_datum = LambDatum.new(lamb_datum_params)

    respond_to do |format|
      if @lamb_datum.save
        format.html { redirect_to @lamb_datum, notice: 'Lamb datum was successfully created.' }
        format.json { render :show, status: :created, location: @lamb_datum }
      else
        format.html { render :new }
        format.json { render json: @lamb_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lamb_data/1
  # PATCH/PUT /lamb_data/1.json
  def update
    respond_to do |format|
      if @lamb_datum.update(lamb_datum_params)
        format.html { redirect_to @lamb_datum, notice: 'Lamb datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @lamb_datum }
      else
        format.html { render :edit }
        format.json { render json: @lamb_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lamb_data/1
  # DELETE /lamb_data/1.json
  def destroy
    @lamb_datum.destroy
    respond_to do |format|
      format.html { redirect_to lamb_data_url, notice: 'Lamb datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lamb_datum
      @lamb_datum = LambDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lamb_datum_params
      params.require(:lamb_datum).permit(:identifier, :activity, :light)
    end
end
