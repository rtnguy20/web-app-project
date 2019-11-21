class JobsController < 
  #before_action :set_job, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!, :except => [:index]
#...

  def create
    @job = Job.new(job_params)
    authorize @job

    if @job.save
      redirect_to @job, alert: "Job offer succesfully created"
    else
      render new_job_path, alert: "Oops!, please try again!"
    end
  end

  def edit
    authorize @job
  end

  def update
    authorize @job
    @job.update(job_params)
    redirect_to @job, alert: "Job offer succesfully updated"
  end

  def destroy
    authorize @job
    @job.destroy
    redirect_to root_path, alert: "Job offer succesfully deleted"
  end

  private
  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :description, :company_name ,:url, :location, :category_id, :company_id, skill_ids:[], skills_attributes:[:name])
  end
end
