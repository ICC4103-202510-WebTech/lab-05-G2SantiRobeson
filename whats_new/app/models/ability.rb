# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the user here. For example:
    #
    return unless user
    
    if user.admin?
      can :manage, :all
    else
      can :index, User
      can :show, User, id: user.id
      can :update, User, id: user.id

      can :read, Message
      can :create, Message
      can [:update, :destroy], Message, user_id: user.id

      can :index, Chat
      can :show,   Chat do |chat|
        [chat.sender_id, chat.receiver_id].include?(user.id)
      end
      can :create, Chat
      can [:update, :destroy], Chat do |chat|
        [chat.sender_id, chat.receiver_id].include?(user.id)
    end
  end


    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, published: true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end
