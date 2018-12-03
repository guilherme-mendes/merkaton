json.extract! pedido, :id, :endereco, :cidade, :estado, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
