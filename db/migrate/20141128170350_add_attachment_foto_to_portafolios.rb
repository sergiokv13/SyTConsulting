class AddAttachmentFotoToPortafolios < ActiveRecord::Migration
  def self.up
    change_table :portafolios do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :portafolios, :foto
  end
end
