class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :load_object, only: [:update, :show]

  def index
    @orders = Order.all
  end

  def new
  end

  def create
  end

  def edit
    @order = get_cart
    @order.update(product_id: params[:id])
    @product = Product.find(params[:id])
  end

  def update
    @order.paid!
    @order.update(order_params)
    current_user.points.first.increment!(:point, 10)
    redirect_to order_path(@order)
  end

  def show
    @product = Product.find(@order.product_id)
  end


  private

  def load_object
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:user_id, :status, :total, :zipcode, :address1, :address2, :paid_at, :name)
  end


end
