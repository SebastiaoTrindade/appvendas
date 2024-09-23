class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :codigo
      t.text :descricao
      t.decimal :preco_venda, precision: 10, scale: 2
      t.decimal :preco_custo, precision: 10, scale: 2
      t.integer :quantidade_estoque

      t.timestamps
    end
  end
end
