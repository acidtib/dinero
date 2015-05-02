class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :user_id
      t.string :name
      t.string :phone
      t.string :email
      t.string :spei

      t.timestamps null: false
    end
  end
end
