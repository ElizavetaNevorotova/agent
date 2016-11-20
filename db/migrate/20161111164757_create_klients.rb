class CreateKlients < ActiveRecord::Migration[5.0]
  def change
    create_table :klients do |t|
      t.date :date_of_birth
      t.string :first_name
      t.string :last_name
      t.string :address
      t.integer :s_passport
      t.integer :n_passport
      t.date :date_of_passport
      t.string :passport_organisation
      t.string :property
      t.timestamps
    end
  end
end
