require 'faraday'

class SearchesController 
  def index
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/search?") do |f|
    f.headers["api_key"] = 'hfBNMzxwRcKN0u7SzYR4b30m34skjPaOehvPaLAa'
    f.headers["generalSearchInput"] = "#{search_inquiry}"
      
    end
  end
end