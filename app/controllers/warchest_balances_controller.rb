class WarchestBalancesController < ApplicationController
  before_action :set_warchest

  def index
    @warchest_balances = @warchest.warchest_balances
  end

  def new
    @warchest_balance = @warchest.warchest_balances.new
  end

  def create
    @warchest_balance = @warchest.warchest_balances.new(warchest_balance_params)
    if @warchest_balance.save
      redirect_to warchest_warchest_balances_path(@warchest)
    else
      render :new
    end
  end

  private

  def set_warchest
    @warchest = Warchest.find(params[:warchest_id])
  end

  def warchest_balance_params
    params.require(:warchest_balance).permit(:balance, :month)
  end
end