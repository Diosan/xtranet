class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :create, Gallery
    can :read, Gallery
    can :create, GalleryImage
    can :read, GalleryImage
    can [:destroy, :update], Gallery, :user_id => user.id
    can [:destroy, :update], GalleryImage, :user_id => user.id
  end

end
