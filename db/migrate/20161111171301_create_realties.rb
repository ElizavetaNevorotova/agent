class CreateRealties < ActiveRecord::Migration[5.0]
  def change
    create_table :realties do |t|
      t.string :kadastr_passport
      t.integer :estimated_cost
      t.integer :kind
      t.string :address
      t.belongs_to :klient, index: true
      t.timestamps
    end
  end
end
