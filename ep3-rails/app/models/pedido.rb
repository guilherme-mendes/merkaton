class Pedido < ApplicationRecord
    validates :endereco, :cidade, :estado, presence: true

    belongs_to :produto
end
