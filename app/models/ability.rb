# app/models/ability.rb
class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
    elsif user.school_admin?
      can [:read, :update], School
      can :manage, Course
      can :manage, Batch
      can :manage, BatchesUser
    elsif user.student?
      can :read, School
      can :read, Course
      can :read, Batch
      can :read, BatchesUser
      can :read, User
      can :create, BatchesUser
    end
  end
end
