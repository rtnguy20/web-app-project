class JobrecsController < ApplicationController
  before_action :set_jobrec, only: [:show, :edit, :update, :destroy]

  # GET /jobrecs
  # GET /jobrecs.json
  def index
    @jobrecs = Jobrec.all
  end

  # GET /jobrecs/1
  # GET /jobrecs/1.json
  def show
  end

  # GET /jobrecs/new
  def new
    @jobrec = Jobrec.new
  end

  # GET /jobrecs/1/edit
  def edit
  end

  # POST /jobrecs
  # POST /jobrecs.json
  def create
    @jobrec = Jobrec.new(jobrec_params)

    respond_to do |format|
      if @jobrec.save
        format.html { redirect_to @jobrec, notice: 'Jobrec was successfully created.' }
        format.json { render :show, status: :created, location: @jobrec }
      else
        format.html { render :new }
        format.json { render json: @jobrec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobrecs/1
  # PATCH/PUT /jobrecs/1.json
  def update
    respond_to do |format|
      if @jobrec.update(jobrec_params)
        format.html { redirect_to @jobrec, notice: 'Jobrec was successfully updated.' }
        format.json { render :show, status: :ok, location: @jobrec }
      else
        format.html { render :edit }
        format.json { render json: @jobrec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobrecs/1
  # DELETE /jobrecs/1.json
  def destroy
    @jobrec.destroy
    respond_to do |format|
      format.html { redirect_to jobrecs_url, notice: 'Jobrec was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobrec
      @jobrec = Jobrec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobrec_params
      params.require(:jobrec).permit(:first_name, :last_name, :email_address)
    end
end
