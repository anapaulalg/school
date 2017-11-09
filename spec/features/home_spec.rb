require "rails_helper"

describe "student Page" do
  it "shows information about students" do
    visit root_path

    expect(page).to have_content "Your Pair Today"
  end
end
