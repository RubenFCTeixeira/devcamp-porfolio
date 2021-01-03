module CurrentUserConcern
  extend ActiveSupport::Concern

  # Overrides devise gem current_user method with a null object design pattern
  def current_user
    super || guest_user
  end

  # Creates a guest_user to mimic App functionality
  def guest_user
    OpenStruct.new(name: 'Guest User', first_name: 'Guest', last_name: 'User', email: 'guest@fake.com')
  end
end
