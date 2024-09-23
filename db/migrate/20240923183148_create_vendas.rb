class CreateVendas < ActiveRecord::Migration[5.2]
  def change
    create_table :vendas do |t|
      t.string :produto
      t.integer :quantidade
      t.decimal :valor_total, precision: 10, scale: 2
      t.decimal :valor_unitario, precision: 10, scale: 2

      t.timestamps
    end
  end
end
