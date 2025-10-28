class CreateUsuarios < ActiveRecord::Migration[7.1]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :email
      t.string :senha_digest
      t.boolean :admin

      t.timestamps
    end
  end
end
