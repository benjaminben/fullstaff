class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :handle
      t.string :title
      t.string :phone
      t.string :summary
      t.string :avatar

      t.timestamps null: false
    end
  end
end
