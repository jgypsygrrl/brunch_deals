class AddZipToUsers < ActiveRecord::Migration
  def change
    change_table(:users) do |t|
      t.integer :zip
    end
  end
end
