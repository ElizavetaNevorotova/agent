class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :kind
      t.integer :price
      t.belongs_to :worker, index: true
      t.belongs_to :klient, index: true
      t.timestamps
    end
  end
end
