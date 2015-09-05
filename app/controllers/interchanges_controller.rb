class InterchangesController < ApplicationController
  before_action :set_interchange, only: [:show, :edit, :update, :destroy]

  # GET /interchanges
  # GET /interchanges.json
  def index
    @interchanges = Interchange.all
  end

  # GET /interchanges/1
  # GET /interchanges/1.json
  def show
  end

  # GET /interchanges/new
  def new
    @interchange = Interchange.new
  end

  # GET /interchanges/1/edit
  def edit
  end

  # POST /interchanges
  # POST /interchanges.json
  def create
    @interchange = Interchange.new(interchange_params)

    respond_to do |format|
      if @interchange.save
        format.html { redirect_to @interchange, notice: 'Interchange was successfully created.' }
        format.json { render :show, status: :created, location: @interchange }
      else
        format.html { render :new }
        format.json { render json: @interchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interchanges/1
  # PATCH/PUT /interchanges/1.json
  def update
    respond_to do |format|
      if @interchange.update(interchange_params)
        format.html { redirect_to @interchange, notice: 'Interchange was successfully updated.' }
        format.json { render :show, status: :ok, location: @interchange }
      else
        format.html { render :edit }
        format.json { render json: @interchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interchanges/1
  # DELETE /interchanges/1.json
  def destroy
    @interchange.destroy
    respond_to do |format|
      format.html { redirect_to interchanges_url, notice: 'Interchange was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interchange
      @interchange = Interchange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interchange_params
      params.require(:interchange).permit(:name)
    end
end
