class Pedido < ApplicationRecord
    validates :endereco, :cidade, :estado, presence: true

    belongs_to :produto
    #Relacionamento entre dois modelos
    belongs_to :comprador, class_name: "User"
    belongs_to :vendedor, class_name: "User"
end
