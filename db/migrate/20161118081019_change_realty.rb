class ChangeRealty < ActiveRecord::Migration[5.0]
  def up
    change_column :realties, :kind, :integer
  end
end
