class AddAttachmentFotoToServicios < ActiveRecord::Migration
  def self.up
    change_table :servicios do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :servicios, :foto
  end
end
