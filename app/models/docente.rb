class Docente < ActiveRecord::Base
  attr_accessible :email, :imageurl, :matricula, :nome, :situacao, :titulacao
  has_attached_file :imageurl, :styles => { :small => "150x150>" }, :default_url => "default.jpg",
                    :url => "alunos/:id/:style/:basename.:extension",
                    :path => ":rails_root/app/assets/images/alunos/:id/:style/:basename.:extension"

  validates_attachment_size :imageurl, :less_than => 5.megabytes
  validates_attachment_content_type :imageurl, :content_type => ['image/jpeg', 'image/png']
end
