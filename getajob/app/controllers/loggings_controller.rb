class LoggingsController < ApplicationController
  before_action :set_logging, only: [:show, :edit, :update, :destroy]

  # GET /loggings
  # GET /loggings.json
  def index
    @loggings = Logging.all
  end

  # GET /loggings/1
  # GET /loggings/1.json
  def show
  end

  # GET /loggings/new
  def new
    @logging = Logging.new
  end

  # GET /loggings/1/edit
  def edit
  end

  # POST /loggings
  # POST /loggings.json
  def create
    @logging = Logging.new(logging_params)

    respond_to do |format|
      if @logging.save
        format.html { redirect_to @logging, notice: 'Logging was successfully created.' }
        format.json { render :show, status: :created, location: @logging }
      else
        format.html { render :new }
        format.json { render json: @logging.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loggings/1
  # PATCH/PUT /loggings/1.json
  def update
    respond_to do |format|
      if @logging.update(logging_params)
        format.html { redirect_to @logging, notice: 'Logging was successfully updated.' }
        format.json { render :show, status: :ok, location: @logging }
      else
        format.html { render :edit }
        format.json { render json: @logging.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loggings/1
  # DELETE /loggings/1.json
  def destroy
    @logging.destroy
    respond_to do |format|
      format.html { redirect_to loggings_url, notice: 'Logging was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logging
      @logging = Logging.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def logging_params
      params.require(:logging).permit(:email, :password)
    end
end
