require 'spec_helper'

describe "visitor can create a new film" do
  it "visitor successfully creates a new film" do
    visit '/films/new'

      fill_in 'film[title]', with: "Dead"
      fill_in 'film[year]', with: 2013
      fill_in 'film[box_office_sales]', with: 29348

      click_button 'Submit'

      expect(current_path).to eq("/films/#{Film.last.id}")

      expect(page).to have_content(2017)
      expect(page).to have_content(3)
      expect(page).to have_content("Fargo")
    end
end
