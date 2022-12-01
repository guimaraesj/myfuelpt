class DiscountsController < ApplicationController
  before_action :set_product, only: %i[edit update destroy]

  # Pundit: allow-list approach
  #after_action :verify_authorized, except: %i[index], unless: :skip_pundit?
  #after_action :verify_policy_scoped, except: %i[index], unless: :skip_pundit?

  def index
    #@discounts = policy_scope(Discount)
    #@discounts = Discount.all
    @discounts = Discount.all#.where(user: current_user)
  end

  # def new
  #   @discount = Discount.new
  #   # authorize @discounts # pundit authorization to anyone
  # end

  # def create
  #   @discount = Discount.new(discount_params)
  #   # @discount.user = current_user
  #   authorize @discount # pundit authorization to anyone
  #   if @discount.save
  #     redirect_to discounts_path(@discount)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # def edit
  #   @discount = Discount.find(params[:discount_id])
  #   authorize @discount # pundit authorization to what is defined in rents policy
  # end

  # def update
  #   #@discount = Discount.find(params[:discount_id])
  #   @discount.update(discount_params)
  #   authorize @discount # pundit authorization to what is defined in rents policy
  #   if @discount.save
  #     redirect_to discounts_path(@discount)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   # authorize @discounts # pundit authorization to what is defined in rents policy
  #   @discount.destroy
  #   redirect_to discounts_path, status: :see_other
  # end

  private

  def discounts_params
    params.require(:discount).permit(:brand, :quantity, :min_fuel_l, :max_fuel_l, :expiry_date)
  end

  def set_discount
    @discount = Discount.find(params[:id])
  end
end
