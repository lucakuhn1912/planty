class PlantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    # Display only plants of owner
    # scope.where(user: user)
  end

  def show?
    true
  end

  def update?
    user_is_owner_or_admin?
  end

  def new?
    return true
  end

  def create?
    return true
  end

  def destroy?
    user_is_owner_or_admin?
  end

  private

  def user_is_owner_or_admin?
    record.owner == user
  end
end
