class Produto < ApplicationRecord
  has_attached_file :image, styles: { medium: "200x>", thumb: "100x100>" }, default_url: "placeholder.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  validates :nome, :descrição, :preço, presence: true
  validates :preço, numericality: { greater_than: 0}
  validates_attachment_presence :image
  
  # Cada produto pertence a um usuario
  belongs_to :user
  has_many :pedidos
  
end
  