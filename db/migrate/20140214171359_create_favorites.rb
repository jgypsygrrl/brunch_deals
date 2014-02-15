class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.boolean :favorites
      t.references :deal
      t.references :user
    end
  end
end
