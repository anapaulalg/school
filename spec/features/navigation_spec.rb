require "rails_helper"

describe "navigation" do

  it "allows navigation from the list of users to admin page" do
    visit user_path
    click_link "Back"
    expect(root_path).to_not eq(root_path)
  end
end
