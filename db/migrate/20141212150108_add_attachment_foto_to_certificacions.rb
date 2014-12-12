class AddAttachmentFotoToCertificacions < ActiveRecord::Migration
  def self.up
    change_table :certificacions do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :certificacions, :foto
  end
end
