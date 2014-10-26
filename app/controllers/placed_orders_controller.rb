class PlacedOrdersController < ApplicationController
  before_action :set_placed_order, only: [:show, :edit, :update, :destroy]

  # GET /placed_orders
  # GET /placed_orders.json
  def index
    @placed_orders = PlacedOrder.all
  end

  # GET /placed_orders/1
  # GET /placed_orders/1.json
  def show
  end

  # GET /placed_orders/new
  def new
    @placed_order = PlacedOrder.new
  end

  # GET /placed_orders/1/edit
  def edit
  end

  # POST /placed_orders
  # POST /placed_orders.json
  def create
    @placed_order = PlacedOrder.new(placed_order_params)

    respond_to do |format|
      if @placed_order.save
        format.html { redirect_to @placed_order, notice: 'Placed order was successfully created.' }
        format.json { render :show, status: :created, location: @placed_order }
      else
        format.html { render :new }
        format.json { render json: @placed_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /placed_orders/1
  # PATCH/PUT /placed_orders/1.json
  def update
    respond_to do |format|
      if @placed_order.update(placed_order_params)
        format.html { redirect_to @placed_order, notice: 'Placed order was successfully updated.' }
        format.json { render :show, status: :ok, location: @placed_order }
      else
        format.html { render :edit }
        format.json { render json: @placed_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /placed_orders/1
  # DELETE /placed_orders/1.json
  def destroy
    @placed_order.destroy
    respond_to do |format|
      format.html { redirect_to placed_orders_url, notice: 'Placed order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_placed_order
      @placed_order = PlacedOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def placed_order_params
      params.require(:placed_order).permit(:time_placed, :customer_id)
    end
end
