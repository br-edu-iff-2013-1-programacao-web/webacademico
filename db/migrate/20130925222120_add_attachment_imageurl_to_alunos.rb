class AddAttachmentImageurlToAlunos < ActiveRecord::Migration
  def self.up
    change_table :alunos do |t|
      t.attachment :imageurl
    end
  end

  def self.down
    drop_attached_file :alunos, :imageurl
  end
end
