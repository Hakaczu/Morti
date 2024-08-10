class WarchestsController < ApplicationController
  def index
    @warchests = Warchest.all
  end

  def new
    @warchest = Warchest.new
  end

  def create
    @warchest = Warchest.new(warchest_params)
    if @warchest.save
      redirect_to warchests_path
    else
      render :new
    end
  end

  private

  def warchest_params
    params.require(:warchest).permit(:name, :balance)
  end

  def bulk_update_status
    @warchests = Warchest.all
  end

  def update_statuses
    Warchest.where(id: params[:warchest_ids]).update_all(status: params[:status])
    redirect_to warchests_path, notice: 'Statusy zostały zaktualizowane.'
  end

end