class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.boolean :accepted, default: false 
      t.timestamps
    end
  end
end
