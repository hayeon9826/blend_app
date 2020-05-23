class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @point = get_point
  end

  def update
  end

  def toggle
    @product = Product.find(params[:id])
    if product_toggle = current_user.likes.where(likable_id: @product.id).last
      product_toggle.destroy
      # respond_to do |format|
      #   format.js
      # end
    else
      @toggle = Like.create!(likable_id: @product.id, likable_type: "Product", user_id: current_user.id)
      # respond_to do |format|
      #   format.js
      # end
    end
    redirect_to product_path(@product)
  end


end
