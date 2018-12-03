class AddProdutosIdToPedidos < ActiveRecord::Migration[5.2]
  def change
    add_column :pedidos, :produto_id, :integer
  end
end
