class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.integer :fx
      t.integer :fy
      t.integer :tx
      t.integer :ty

      t.timestamps
    end
  end
end
