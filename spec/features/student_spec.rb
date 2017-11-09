require "rails_helper"

it "shows all student" do
  visit admins_url

  expect(page).to have_text("All the students")
end
