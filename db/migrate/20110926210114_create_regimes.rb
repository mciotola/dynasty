class CreateRegimes < ActiveRecord::Migration
  def change
    create_table :regimes do |t|
      t.integer :period
      t.float :production

      t.timestamps
    end
  end
end
