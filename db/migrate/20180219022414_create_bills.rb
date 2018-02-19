class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.string :name
      t.text :description
      t.date :service_start
      t.date :service_end
      t.numeric :amount
      t.string :status
      t.integer :asset_id
      t.timestamps
    end
  end
end
