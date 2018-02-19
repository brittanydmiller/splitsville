class BillsController < ApplicationController
  def create
    @bill = Bill.create(bill_params)
    @asset = Asset.find_by(id: @bill.asset_id)
    redirect_to asset_path(@asset)
  end

  private

  def bill_params
    params.require(:bill).permit(:name,:description,:service_start,:service_end,:amount,:asset_id)
  end
end