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
    record.owner == user
  end

  def new?
    return true
  end

  def create?
    return true
  end
end
