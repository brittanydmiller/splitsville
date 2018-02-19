class PopulateAssetsTable < ActiveRecord::Migration[5.1]
  def change
    Asset.create(:name => "Our Apartment", :description => "737 Douglass, 2 br 1 ba")
  end
end
