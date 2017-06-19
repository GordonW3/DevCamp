module DefaultPageContent
	extend ActiveSupport::Concern

	included do 
  	before_filter :set_page_defaults
	end

  def set_page_defaults
  	@page_title = "Devcamp Portfolio | Gordon's website"
  	@seo_keywords = "Gordon Wallace Portfolio"
  end
end
