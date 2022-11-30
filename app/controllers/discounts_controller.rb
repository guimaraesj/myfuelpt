class DiscountsController < ApplicationController
  before_action :set_product, only: %i[edit update destroy]

  def index
    @discounts = Discount.all
  end

  def new
    @discount = Discount.new
    # authorize @discounts # pundit authorization to anyone
  end

  def create
    @discount = Discount.new(discounts_params)
    # @product.user = current_user
    # authorize @product # pundit authorization to anyone
    if @discount.save
      redirect_to discounts_path(@discount)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    #@discount = Discount.find(params[:product_id])
    #authorize @discounts # pundit authorization to what is defined in rents policy
  end

  def update
    # authorize @discounts # pundit authorization to what is defined in rents policy
    #@discount = Discount.find(params[:product_id])
    @discount.update(discounts_params)
    #@discounts.product = @discounts
    if @discount.save
      redirect_to discounts_path(@discount)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    # authorize @discounts # pundit authorization to what is defined in rents policy
    #@discount = Discount.find(params[:id])
    @discount.destroy
    redirect_to discounts_path, status: :see_other
  end

  private

  def discounts_params
    params.require(:discount).permit(:brand, :quantity, :min_fuel_l, :max_fuel_l, :expiry_date)
  end

  def set_product
    @discount = Discount.find(params[:id])
  end

end
