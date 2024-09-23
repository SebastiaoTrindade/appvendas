# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2024_09_23_183259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "caixas", force: :cascade do |t|
    t.decimal "saldo_inicial", precision: 10, scale: 2
    t.decimal "saldo_final", precision: 10, scale: 2
    t.datetime "aberto_em"
    t.datetime "fechado_em"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entrada_de_estoques", force: :cascade do |t|
    t.bigint "produto_id"
    t.integer "quantidade"
    t.decimal "preco_unitario", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_entrada_de_estoques_on_produto_id"
  end

  create_table "item_de_vendas", force: :cascade do |t|
    t.bigint "venda_id"
    t.bigint "produto_id"
    t.integer "quantidade"
    t.decimal "preco_unitario", precision: 10, scale: 2
    t.decimal "preco_total", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_item_de_vendas_on_produto_id"
    t.index ["venda_id"], name: "index_item_de_vendas_on_venda_id"
  end

  create_table "movimentacao_de_caixas", force: :cascade do |t|
    t.bigint "caixa_id"
    t.string "tipo_movimentacao"
    t.decimal "valor", precision: 10, scale: 2
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caixa_id"], name: "index_movimentacao_de_caixas_on_caixa_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.string "codigo"
    t.text "descricao"
    t.decimal "preco_venda", precision: 10, scale: 2
    t.decimal "preco_custo", precision: 10, scale: 2
    t.integer "quantidade_estoque"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saida_de_estoques", force: :cascade do |t|
    t.bigint "produto_id"
    t.integer "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_saida_de_estoques_on_produto_id"
  end

  create_table "vendas", force: :cascade do |t|
    t.string "produto"
    t.integer "quantidade"
    t.decimal "valor_total", precision: 10, scale: 2
    t.decimal "valor_unitario", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "entrada_de_estoques", "produtos"
  add_foreign_key "item_de_vendas", "produtos"
  add_foreign_key "item_de_vendas", "vendas"
  add_foreign_key "movimentacao_de_caixas", "caixas"
  add_foreign_key "saida_de_estoques", "produtos"
end
