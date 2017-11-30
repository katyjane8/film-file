require 'spec_helper'

describe "when I visit a films show page" do
  it "I see information about that film" do
    Film.create({title: "Fargo", year: 2017, box_office_sales: 3})
    visit '/films/1'

    expect(page).to have_content(2017)
    expect(page).to have_content(3)
    expect(page).to have_content("Fargo")
  end
end
