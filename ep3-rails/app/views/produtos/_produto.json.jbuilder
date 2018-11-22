json.extract! produto, :id, :nome, :descrição, :preço, :created_at, :updated_at
json.url produto_url(produto, format: :json)
