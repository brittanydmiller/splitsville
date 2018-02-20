require 'rails_helper'

describe 'assets/show.html.haml', type: :view do
  context 'bills have been added' do
    it 'displays a list of bills' do
      asset = assign(:asset, create(:asset, name: 'Billy Goat'))
      bills = assign(:bills, [create(:bill, name: 'PGB', asset_id: asset.id), create(:bill, name: 'Zomcast', asset_id: asset.id)])
      render
      expect(rendered).to have_text 'Bills for Billy Goat'
    end
  end
  context 'the asset has no bills', type: :view do
    it 'does not display a list of bills' do
      asset = assign(:asset, build(:asset))
      asset.bills.destroy_all
      render
      expect(rendered).not_to have_text 'Bills for'
    end
  end
end