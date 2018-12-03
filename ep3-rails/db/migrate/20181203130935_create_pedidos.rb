class CreatePedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedidos do |t|
      t.string :endereco
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
