class Pedido < ApplicationRecord
    validates :endereco, :cidade, :estado, presence: true

    belongs_to :produto, :optional => true
    #Relacionamento entre dois modelos
    belongs_to :comprador, class_name: "User", :optional => true
    belongs_to :vendedor, class_name: "User" , :optional => true

end
