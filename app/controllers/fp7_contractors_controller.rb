class Fp7ContractorsController < ApplicationController
  before_action :set_fp7_contractor, only: [:show, :edit, :update, :destroy]
  
  # GET /fp7_contractors
  # GET /fp7_contractors.json
  def index
    @fp7_contractors = Fp7Contractor.paginate(:page => params[:page], :per_page => 25)
  end

  # GET /fp7_contractors/1
  # GET /fp7_contractors/1.json
  def show
  end

  # GET /fp7_contractors/new
  def new
    @fp7_contractor = Fp7Contractor.new
  end

  # GET /fp7_contractors/1/edit
  def edit
  end

  # POST /fp7_contractors
  # POST /fp7_contractors.json
  def create
    @fp7_contractor = Fp7Contractor.new(fp7_contractor_params)

    respond_to do |format|
      if @fp7_contractor.save
        format.html { redirect_to @fp7_contractor, notice: 'Fp7 contractor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fp7_contractor }
      else
        format.html { render action: 'new' }
        format.json { render json: @fp7_contractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fp7_contractors/1
  # PATCH/PUT /fp7_contractors/1.json
  def update
    respond_to do |format|
      if @fp7_contractor.update(fp7_contractor_params)
        format.html { redirect_to @fp7_contractor, notice: 'Fp7 contractor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fp7_contractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fp7_contractors/1
  # DELETE /fp7_contractors/1.json
  def destroy
    @fp7_contractor.destroy
    respond_to do |format|
      format.html { redirect_to fp7_contractors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fp7_contractor
      @fp7_contractor = Fp7Contractor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fp7_contractor_params
      params.require(:fp7_contractor).permit(:rcn, :project_title, :contract_number, :role, :pj_uid, :organization_name, :organization_department, :organization_subdepartment, :organization_acronym, :organization_size, :organization_type, :address, :po_box, :post_code, :city, :country, :organization_website, :pe_uid, :contact_surname, :contact_name, :contact_position, :contact_initials, :contact_title)
    end
end
