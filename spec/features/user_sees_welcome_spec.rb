require 'spec_helper'

describe "When a user visits '/'" do
  it "they see a welcome message" do

    visit '/'

    # save_and_open_page

    expect(page).to have_content("Welcome")
  end
end
