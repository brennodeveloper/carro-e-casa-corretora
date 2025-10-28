class CreateSeguros < ActiveRecord::Migration[7.1]
  def change
    create_table :seguros do |t|
      t.string :nome
      t.text :descricao
      t.decimal :preco

      t.timestamps
    end
  end
end
