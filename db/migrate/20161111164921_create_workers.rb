class CreateWorkers < ActiveRecord::Migration[5.0]
  def change
    create_table :workers do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :phone_number
      t.timestamps
    end
  end
end
