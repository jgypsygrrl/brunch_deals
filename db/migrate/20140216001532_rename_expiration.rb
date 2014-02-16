class RenameExpiration < ActiveRecord::Migration
  def change
    change_table :deals do |t|
    t.rename :expiration, :expirationDate
  end
  end
end
