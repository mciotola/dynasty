class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.integer :period
      t.float :production
      t.float :potentialinit
      t.float :potentialcur
      t.float :growth
      t.float :efficiency

      t.timestamps
    end
  end
end
