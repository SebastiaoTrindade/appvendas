class CreateMovimentacaoDeCaixas < ActiveRecord::Migration[5.2]
  def change
    create_table :movimentacao_de_caixas do |t|
      t.references :caixa, foreign_key: true
      t.string :tipo_movimentacao
      t.decimal :valor, precision: 10, scale: 2
      t.text :descricao

      t.timestamps
    end
  end
end
