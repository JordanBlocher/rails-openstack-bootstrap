class Ability
  include CanCan::Ability

  def initialize(cloud_user)
    cloud_user ||= CloudUser.new 
    if cloud_user.admin?
      can :manage, :all
    else
      cannot :read [User, KeyPair, SecurityGroupRules, CloudUser]
    end
  end
end
