class CreateBallots < ActiveRecord::Migration
  def change
    create_table :ballots do |t|
      t.string :code, unique: true
      t.text :entree_ids
      t.text :dessert_ids

      t.timestamps
    end
  end
end
