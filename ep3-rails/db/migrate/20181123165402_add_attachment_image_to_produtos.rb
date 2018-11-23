class AddAttachmentImageToProdutos < ActiveRecord::Migration[5.2]
  def self.up
    change_table :produtos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :produtos, :image
  end
end
