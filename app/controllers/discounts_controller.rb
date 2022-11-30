class DiscountsController < ApplicationController
  before_action :set_discounts, only: %i[show edit update destroy]

  # Pundit: allow-list approach
  after_action :verify_authorized, except: %i[index], unless: :skip_pundit?
  after_action :verify_policy_scoped, except: %i[index], unless: :skip_pundit?

  def index
    @discounts = policy_scope(Discount)
    #@discounts = Discount.all
  end

  def new
    @discount = Discount.new
    authorize @discount # pundit authorization to anyone
  end

  def create
    @discount = Discount.new(discounts_params)
    # @discount.user = current_user
    authorize @discount # pundit authorization to anyone
    if @discount.save
      redirect_to discounts_path(@discount)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @discount = Discount.find(params[:product_id])
    authorize @discount # pundit authorization to what is defined in rents policy
  end

  def update
    @discount = Discount.find(params[:product_id])
    @discount.update(discounts_params)
    #@discounts.product = @discounts
    authorize @discount # pundit authorization to what is defined in rents policy
    redirect_to discounts_path(@discounts)
  end

  def destroy
    # authorize @discounts # pundit authorization to what is defined in rents policy
    @discount = Discount.find(params[:id])
    @discount.destroy
    redirect_to discounts_path, status: :see_other
  end

  private

  def discounts_params
    params.require(:discount).permit(:brand, :quantity, :min_fuel_l, :max_fuel_l, :expiry_date, :created_at, :updated_at)
  end

  def set_discounts
    @discounts = Discount.find(params[:id])
  end
end
