class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :account_number
      t.references :admin, index: true

      t.timestamps null: false
    end
    add_foreign_key :accounts, :admins
  end
end
