require 'rails_helper'

feature 'user creates a bill for an asset' do
  scenario 'successfully' do
    asset1 = create(:asset)
    visit "/assets/#{asset1.id}"
    click_on 'Add Bill'
    fill_in 'Name', with: 'Unique Utility'
    click_on 'Save Bill'
    expect(page).to have_css '.bills', text: "Bills for Our Apartment"
    expect(page).to have_text 'Unique Utility'
  end
end