class CreateSaidaDeEstoques < ActiveRecord::Migration[5.2]
  def change
    create_table :saida_de_estoques do |t|
      t.references :produto, foreign_key: true
      t.integer :quantidade

      t.timestamps
    end
  end
end
