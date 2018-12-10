class ContributionsController < ApplicationController
  before_action :set_contribution, only: [:show, :edit, :update, :destroy]

  def index
    @contributions = Contribution.all
  end

  def show
  end

  def new
    @contribution = Contribution.new
  end

  def edit
  end

  def create
    @contribution = Contribution.new(contribution_params)
    if @contribution.save
      redirect_to contribution_path(@contribution)
    else
      render :new
    end
  end

  def update
    if @contribution.update(contribution_params)
      redirect_to contribution_path(@contribution)
    else
      render :edit
    end
  end

  def destroy
    @contribution.destroy
  end

  private

  def set_contribution
    @contribution = Contribution.find(params[:id])
  end

  def contribution_params
    params.require(:contribution).permit(:project_id, :user_id, :equity, :job_title, :job_description)
  end
end

end
