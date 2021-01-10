module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  # Helper function to set page titles before any controller action.
  # below is the default value
  def set_page_defaults
    @page_title = 'DevCamp Portfolio App'
    @seo_keywords = 'Beginner Rails App just for practice'
  end
end
