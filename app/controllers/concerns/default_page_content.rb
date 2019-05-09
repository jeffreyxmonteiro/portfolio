module DefaultPageContent
  extend ActiveSupport::Concern

  included do
      before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Jeffrey Xavier Monteiro Portfolio"
    @seo_keywords = "Full Stack Developer: Ruby on Rails, HTML, CSS, JavaScript, BootStrap, and more."
  end
end
