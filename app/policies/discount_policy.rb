class DiscountPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index?
    true
    #record.user == user
  end

  def create?
    true
  end

  def new?
    true
    #record.user == user
  end

  def edit?
    true
  end

  def update?
    true
    #record.user == user
    # record: the rents passed to the `authorize` method in controller
    # user: the `current_user` signed in with Devise
  end

end
