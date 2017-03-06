class Ability
  include CanCan::Ability

  def initialize(user)

    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities

    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can :read, Post
      can :manage, User, id: user.id
    end
  end
end
