class RenameDealTitle < ActiveRecord::Migration
  def change
    change_table :deals do |t|
    t.rename :deal_title, :dealTitle
  end
  end
end
