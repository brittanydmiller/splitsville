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
    visit '/assets/1'
    expect(page).to have_css 'h1', text: 'Splitsville'
    expect(page).to have_css 'h2', text: 'This Asset'
  end
end