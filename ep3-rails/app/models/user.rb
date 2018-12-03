class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :name, presence: true

  has_many :produtos, dependent: :destroy
  has_many :vendas, class_name: "Pedido", foreign_key: "vendedor_id"
  has_many :compras, class_name: "Pedido", foreign_key: "comprador_id" 
end
