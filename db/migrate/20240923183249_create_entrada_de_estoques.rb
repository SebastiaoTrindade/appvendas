class CreateEntradaDeEstoques < ActiveRecord::Migration[5.2]
  def change
    create_table :entrada_de_estoques do |t|
      t.references :produto, foreign_key: true
      t.integer :quantidade
      t.decimal :preco_unitario, precision: 10, scale: 2

      t.timestamps
    end
  end
end
