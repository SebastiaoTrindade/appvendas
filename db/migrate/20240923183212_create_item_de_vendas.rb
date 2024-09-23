class CreateItemDeVendas < ActiveRecord::Migration[5.2]
  def change
    create_table :item_de_vendas do |t|
      t.references :venda, foreign_key: true
      t.references :produto, foreign_key: true
      t.integer :quantidade
      t.decimal :preco_unitario, precision: 10, scale: 2
      t.decimal :preco_total, precision: 10, scale: 2

      t.timestamps
    end
  end
end
