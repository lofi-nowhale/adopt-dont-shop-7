require 'rails_helper'

RSpec.describe "applicant show page", type: :feature do 
  before (:each) do 
    load_test_data
  end

  it "shows the name of the applicant and all of its attributes" do 
    visit "/applicants/#{@applicant_1.id}"

    expect(page).to have_content(@applicant_1.name)
    expect(page).to have_content(@applicant_1.street_address)
    expect(page).to have_content(@applicant_1.city)
    expect(page).to have_content(@applicant_1.state)
    expect(page).to have_content(@applicant_1.zipcode)
    expect(page).to have_content(@applicant_1.description)
    expect(page).to have_link("Drake")
    expect(page).to have_link("Bill")
  end

  it "allows user to search for a pets by name + click button to add that pet to their application" do
    visit "/applicants/#{@applicant_1.id}"
    
    fill_in "name", with: "Portia"
    click_button "Search"

    expect(page).to have_content("Portia")

    click_button "Adopt this Pet"

    expect(page).to have_link("Portia")
  end

  it "allows an applicant to submit their application once they have added one or more pets" do 
    applicant_3 = Applicant.create!(name: "Dachsuund Pup", street_address: "456 Greenwich", city: "New Jersey", state: "NJ", zipcode: "10006", description: "I'm a hound dog")

    visit "/applicants/#{applicant_3.id}"

    expect(page).not_to have_content("Description")
    expect(page).to have_no_button("Submit Application")
    
    fill_in "name", with: "Portia"
    click_button "Search"

    click_button "Adopt this Pet"

    fill_in "name", with: "Drake"
    click_button "Search"

    click_button "Adopt this Pet"
  end
end