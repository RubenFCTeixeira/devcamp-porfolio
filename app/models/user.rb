class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :name

  # Helper function to create virtual attribute (first name) for a given Username
  def first_name
    name.split.first
  end

  # Helper function to create virtual attribute (last name) for a given Username
  def last_name
    name.split.last
  end
end
