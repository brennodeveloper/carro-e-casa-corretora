class CreateMensagems < ActiveRecord::Migration[7.1]
  def change
    create_table :mensagems do |t|
      t.string :nome
      t.string :email
      t.text :conteudo

      t.timestamps
    end
  end
end
