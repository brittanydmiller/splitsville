require 'rails_helper'

feature 'user visits assets page' do
  scenario 'successfully' do
    visit '/assets'
    expect(page).to have_css 'h1', text: 'Splitsville'
    expect(page).to have_css 'h2', text: 'Assets'
  end
end

feature 'user visits asset show page' do
  scenario 'successfully' do
    asset1 = create(:asset)
    visit "/assets/#{asset1.id}"
    expect(page).to have_css 'h1', text: 'Splitsville'
    expect(page).to have_css 'h2', text: 'Our Apartment'
  end
end