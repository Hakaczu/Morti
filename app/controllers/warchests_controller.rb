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
end