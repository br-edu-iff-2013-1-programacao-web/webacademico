class AddAttachmentImageurlToDocentes < ActiveRecord::Migration
  def self.up
    change_table :docentes do |t|
      t.attachment :imageurl
    end
  end

  def self.down
    drop_attached_file :docentes, :imageurl
  end
end
