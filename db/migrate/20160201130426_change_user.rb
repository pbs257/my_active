class ChangeUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.rename  :name, :firstname
      t.string :lastname
    end
  end
end
