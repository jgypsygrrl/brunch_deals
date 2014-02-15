class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string  :deal_title
      t.string :showImage
      t.string :name
      t.text :dealinfo
      t.string :URL
    end
  end
end
