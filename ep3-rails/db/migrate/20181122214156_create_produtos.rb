class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.text :descrição
      t.decimal :preço

      t.timestamps
    end
  end
end
