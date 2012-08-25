class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.string :chef
      t.string :photo
      t.string :category

      t.timestamps
    end
  end
end
