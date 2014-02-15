class AddExpirationToDeals < ActiveRecord::Migration
  def change
    change_table(:deals) do |t|
      t.date(:expiration)
    end
  end
end
