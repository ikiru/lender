class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password_digest
      t.interger :money

      t.timestamps null: false
    end
  end
end
