class Portfolio < ApplicationRecord
  include Placeholder

  has_many :technologies

  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :ruby_on_rails, -> { where(title: 'ruby on rails') }
  scope :angular, -> { where(title: 'angular') }

  after_initialize :set_defaults

  # Helper function to set default images values for portfolios without one
  def set_defaults
    self.main_image ||= Placeholder.image_generator(600, 200)
    self.thumb_image ||= Placeholder.image_generator(350, 200)
  end
end
