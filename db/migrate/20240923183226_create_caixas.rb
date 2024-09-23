class CreateCaixas < ActiveRecord::Migration[5.2]
  def change
    create_table :caixas do |t|
      t.decimal :saldo_inicial, precision: 10, scale: 2
      t.decimal :saldo_final, precision: 10, scale: 2
      t.datetime :aberto_em
      t.datetime :fechado_em

      t.timestamps
    end
  end
end
