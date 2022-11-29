class DiscountsController < ApplicationController
  def index
    @discounts = Discount.all
  end

  def new
    @discounts = Discount.new
    # authorize @discounts # pundit authorization to anyone
  end

  def create
    @product = Product.new(product_params)
    # @product.user = current_user
    # authorize @product # pundit authorization to anyone
    # if @product.save
    #   redirect_to products_path(@product)
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  def edit
    @product # pundit authorization to owner (see policy)
  end

  # def update
  #   authorize @product # pundit authorization to owner (see policy)
  #   @product.update(product_params)
  #   redirect_to product_path(@product)
  # end




end
