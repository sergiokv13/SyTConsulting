class AddAttachmentFotoToAcontecimientos < ActiveRecord::Migration
  def self.up
    change_table :acontecimientos do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :acontecimientos, :foto
  end
end
