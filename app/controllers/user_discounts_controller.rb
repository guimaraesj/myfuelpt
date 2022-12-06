class UserDiscountsController < ApplicationController
  before_action :set_user_discount, only: %i[destroy]

  # Pundit: allow-list approach
  #after_action :verify_authorized, except: %i[index], unless: :skip_pundit?
  #after_action :verify_policy_scoped, except: %i[index], unless: :skip_pundit?

  def index
    @user_discounts = UserDiscount.all
  end

  def create
    @user_discount = UserDiscount.new
    @user_discount.user = current_user
    @user_discount.discount = Discount.find(params[:discount_id])
    # @user_discount.user = current_user
    if @user_discount.save
      redirect_to discounts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    # authorize @discounts # pundit authorization to what is defined in rents policy
    @user_discount.destroy
    redirect_to discounts_path, status: :see_other
  end

  private

  def user_discount_params
    params.require(:user_discount).permit(:user_id, :discount_id)
  end

  def set_user_discount
    @user_discount = UserDiscount.find(params[:id])
  end
end
