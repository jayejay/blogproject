class Ability
  include CanCan::Ability

  def initialize(user)

    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
    if Rails.env.development?
      user ||= User.new # guest user (not logged in)
        if user.admin?
          can :manage, :all
        else
          #can :read, Category
          can :read, [Tag, Post]
          #can :read, :all
        end

    else
      user ||= User.new # guest user (not logged in)
      if user.admin?
        can :manage, :all
      elsif user.moderator?
        can :manage, :all
      else
        #todo: posts not readable
        can :read, Post
        can :read, Tag
      end
    end

  end
end
