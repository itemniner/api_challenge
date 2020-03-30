require 'faraday'

class SearchesController < Application
  def index
    conn = Faraday.new(url: "https://api.nal.usda.gov") do |f|
      f.params["api_key"] = ENV['FOOD_API_KEY']
      f.params["generalSearchInput"] = "sweet+potatoes"      
    end
    response = conn.get("/fdc/v1/search?")

    json = JSON.parse(response.body, symbolize_names: true)
    @result = json[:results]
  end
end