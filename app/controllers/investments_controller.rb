class InvestmentsController < ApplicationController
  before_action :set_investment, only: [:show, :edit, :update, :destroy]

  def index
    @investments = Investment.all
  end

  def show
  end

  def new
    @investment = Investment.new
  end

  def edit
  end

  def create
    @investment = Investment.new(investment_params)
    if @investment.save
      redirect_to investment_path(@investment)
    else
      render :new
    end
  end

  def update
    if @investment.update(investment_params)
      redirect_to investment_path(@investment)
    else
      render :edit
    end
  end

  def destroy
    @investment.destroy
  end

  private

  def set_investment
    @investment = Investment.find(params[:id])
  end

  def investment_params
    params.require(:investment).permit(:user_id, :round_id, :equity, :price)
  end
end

end
