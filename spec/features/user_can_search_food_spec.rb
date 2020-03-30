require 'rails_helper'

feature "user can search for sweet potatoes" do
  scenario "user submit valid food name" do
    visit "/"

    fill_in :search, with: "sweet potatoes"
    click_on "search"
    expect(current_path).to eq("/foods")

    #see total number of items
    expect(page).to have_content("number of items 3")
    #exp-ect to see 10 food that contains sweet potatoes
  end
end

# curl -H "Content-Type:application/json" \
# https://api.nal.usda.gov/fdc/v1/search\?api_key\=hfBNMzxwRcKN0u7SzYR4b30m34skjPaOehvPaLAa
# \&generalSearchInput\=sweet%20potatoes
