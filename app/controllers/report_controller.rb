class ReportController < ApplicationController
  def view
    @placed_orders = PlacedOrder.all
  end
end
