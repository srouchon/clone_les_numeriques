class RatingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin
        scope.all
      else
        scope.where(user: user)
      end
    end
  end
  
  def destroy?
    user == record.user || user.admin
  end
end
