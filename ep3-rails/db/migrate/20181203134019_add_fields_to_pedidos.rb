class AddFieldsToPedidos < ActiveRecord::Migration[5.2]
  def change
    add_column :pedidos, :comprador_id, :integer
    add_column :pedidos, :vendedor_id, :integer
  end
end
