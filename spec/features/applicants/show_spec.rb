require 'rails_helper'

RSpec.describe "applicant show page", type: :feature do 
  before(:each) do 
    load_test_data
  end

  it "shows the name of the applicant and all of its attributes" do 
    visit "/applications/#{@applicant1.id}"
      save_and_open_page
      expect(page).to have_content(@applicant1.name)
      expect(page).to have_content(@applicant1.street_address)
      expect(page).to have_content(@applicant1.city)
      expect(page).to have_content(@applicant1.state)
      expect(page).to have_content(@applicant1.zipcode)
      expect(page).to have_content(@applicant1.description)
  end
end