class CompanyListingsController < ApplicationController
  before_action :set_company_listing, only: [:show, :edit, :update, :destroy]

  # GET /company_listings
  # GET /company_listings.json
  def index
    @company_listings = CompanyListing.all
  end

  # GET /company_listings/1
  # GET /company_listings/1.json
  def show
  end

  # GET /company_listings/new
  def new
    @company_listing = CompanyListing.new
  end

  # GET /company_listings/1/edit
  def edit
  end

  # POST /company_listings
  # POST /company_listings.json
  def create
    @company_listing = CompanyListing.new(company_listing_params)

    respond_to do |format|
      if @company_listing.save
        format.html { redirect_to @company_listing, notice: 'Company listing was successfully created.' }
        format.json { render :show, status: :created, location: @company_listing }
      else
        format.html { render :new }
        format.json { render json: @company_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_listings/1
  # PATCH/PUT /company_listings/1.json
  def update
    respond_to do |format|
      if @company_listing.update(company_listing_params)
        format.html { redirect_to @company_listing, notice: 'Company listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_listing }
      else
        format.html { render :edit }
        format.json { render json: @company_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_listings/1
  # DELETE /company_listings/1.json
  def destroy
    @company_listing.destroy
    respond_to do |format|
      format.html { redirect_to company_listings_url, notice: 'Company listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_listing
      @company_listing = CompanyListing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_listing_params
      params.require(:company_listing).permit(:name, :description, :website)
    end
end
