class CreateBorrowers < ActiveRecord::Migration
  def change
    create_table :borrowers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password_digest
      t.string :need
      t.string :description
      t.interger :amtborrow

      t.timestamps null: false
    end
  end
end
