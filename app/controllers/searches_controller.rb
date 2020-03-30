require 'faraday'

class SearchesController 
  def index
    conn = Faraday.post(url: "https://api.nal.usda.gov/fdc/v1/search?api_key=hfBNMzxwRcKN0u7SzYR4b30m34skjPaOehvPaLAa") do |f|
      
    end
  end
end