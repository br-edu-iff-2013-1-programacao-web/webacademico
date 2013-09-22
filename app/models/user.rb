class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :role
  # attr_accessible :title, :body
  validates_presence_of :username
    
    ROLES = %w[administrador tecnico docente aluno]
    
    def role_symbols
        [role.to_sym]
    end
    
    def role?(role)
        role.include?(role.to_s)
    end
end
