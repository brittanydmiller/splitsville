require 'rails_helper'

feature 'user creates a bill for an asset' do
  before(:example) do
    asset = create(:asset)
  end

  scenario 'successfully' do
    visit '/assets/1'
    click_on 'Add Bill'
    fill_in 'Name', with: 'Unique Utility'
    click_on 'Save Bill'
    expect(page).to have_css '.bills li', text: "Unique Utility"
  end
end