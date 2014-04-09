class Fp7ProjectsController < ApplicationController
  before_action :set_fp7_project, only: [:show, :edit, :update, :destroy]

  # GET /fp7_projects
  # GET /fp7_projects.json
  def index
    @fp7_projects = Fp7Project.paginate(:page => params[:page], :per_page => 25)
  end

  # GET /fp7_projects/1
  # GET /fp7_projects/1.json
  def show
  end

  # GET /fp7_projects/new
  def new
    @fp7_project = Fp7Project.new
  end

  # GET /fp7_projects/1/edit
  def edit
  end

  # POST /fp7_projects
  # POST /fp7_projects.json
  def create
    @fp7_project = Fp7Project.new(fp7_project_params)

    respond_to do |format|
      if @fp7_project.save
        format.html { redirect_to @fp7_project, notice: 'Fp7 project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fp7_project }
      else
        format.html { render action: 'new' }
        format.json { render json: @fp7_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fp7_projects/1
  # PATCH/PUT /fp7_projects/1.json
  def update
    respond_to do |format|
      if @fp7_project.update(fp7_project_params)
        format.html { redirect_to @fp7_project, notice: 'Fp7 project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fp7_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fp7_projects/1
  # DELETE /fp7_projects/1.json
  def destroy
    @fp7_project.destroy
    respond_to do |format|
      format.html { redirect_to fp7_projects_url }
      format.json { head :no_content }
    end
  end
  
  def project_acronym
    @project_acronym = params[:project_acronym]
    @fp7_project = (Fp7Project.find_by :project_acronym =>  @project_acronym)
    @fp7_contractors = Fp7Contractor.where(  rcn: @fp7_project.rcn ).order(:organization_name)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fp7_project
      @fp7_project = Fp7Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fp7_project_params
      params.require(:fp7_project).permit(:rcn, :project_title, :start_date, :end_date, :duration, :status, :contract_number, :keywords, :date_of_signature, :total_cost, :total_funding, :entry_date, :project_website, :other_information, :call, :framework_programme, :programme, :project_acronym, :achievements, :activity_area, :subjects, :contract_type, :general_information, :objectives)
    end
end
