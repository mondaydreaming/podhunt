class CreateListeners < ActiveRecord::Migration
  def change
    create_table :listeners do |t|
        t.string :firstname
        t.string :lastname
        t.string :username
        t.text :password_digest
        t.date :dob
        t.string :country
        t.string :email
        t.text :interests
        t.text :image
        t.timestamps
    end
  end
end
