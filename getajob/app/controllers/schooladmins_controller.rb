class SchooladminsController < ApplicationController
  before_action :set_schooladmin, only: [:show, :edit, :update, :destroy]

  # GET /schooladmins
  # GET /schooladmins.json
  def index
    @schooladmins = Schooladmin.all
  end

  # GET /schooladmins/1
  # GET /schooladmins/1.json
  def show
  end

  # GET /schooladmins/new
  def new
    @schooladmin = Schooladmin.new
  end

  # GET /schooladmins/1/edit
  def edit
  end

  # POST /schooladmins
  # POST /schooladmins.json
  def create
    @schooladmin = Schooladmin.new(schooladmin_params)

    respond_to do |format|
      if @schooladmin.save
        format.html { redirect_to @schooladmin, notice: 'Schooladmin was successfully created.' }
        format.json { render :show, status: :created, location: @schooladmin }
      else
        format.html { render :new }
        format.json { render json: @schooladmin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schooladmins/1
  # PATCH/PUT /schooladmins/1.json
  def update
    respond_to do |format|
      if @schooladmin.update(schooladmin_params)
        format.html { redirect_to @schooladmin, notice: 'Schooladmin was successfully updated.' }
        format.json { render :show, status: :ok, location: @schooladmin }
      else
        format.html { render :edit }
        format.json { render json: @schooladmin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schooladmins/1
  # DELETE /schooladmins/1.json
  def destroy
    @schooladmin.destroy
    respond_to do |format|
      format.html { redirect_to schooladmins_url, notice: 'Schooladmin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schooladmin
      @schooladmin = Schooladmin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schooladmin_params
      params.require(:schooladmin).permit(:name, :address, :city, :state, :zip, :boss)
    end
end
