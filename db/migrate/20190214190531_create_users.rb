class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :username
      t.string :email
      t.string :avatar, default: "https://pro.findyourtrainer.com/static/images/avatar.jpg"

      t.timestamps
    end
  end
end
