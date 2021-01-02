class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :ruby_on_rails, -> { where(title: 'ruby on rails') }
  scope :angular, -> { where(title: 'angular') }
end
