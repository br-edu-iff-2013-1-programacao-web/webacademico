class Aluno < ActiveRecord::Base
  attr_accessible :bairro, :cidade, :cpf, :email, :endereco, :imageurl, :mae, :matricula, :nome, :pai, :rg, :uf
  has_attached_file :imageurl, :styles => { :small => "150x150>" }, :default_url => "default.jpg",
                    :url => "alunos/:id/:style/:basename.:extension",
                    :path => ":rails_root/app/assets/images/alunos/:id/:style/:basename.:extension"

  validates_attachment_size :imageurl, :less_than => 5.megabytes
  validates_attachment_content_type :imageurl, :content_type => ['image/jpeg', 'image/png']
  
  UF = %w[ac al ap am ba ce df es go ma mt ms mg pa pb pr pe pi rj rn rs ro rr sc sp se to]
end
