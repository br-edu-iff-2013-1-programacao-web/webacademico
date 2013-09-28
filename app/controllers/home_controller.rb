class HomeController < ApplicationController
  before_filter :authenticate_user!, :except => [:about, :developers, :contact]

  def index
    if current_user.role == "administrador" || current_user.role == "administrator"
        redirect_to home_administrador_path
    else
        if current_user.role == "tecnico" || current_user.role == "technical"
            redirect_to home_tecnico_path
        else
            if current_user.role == "docente" || current_user.role == "instructor"
                redirect_to home_docente_path
            else
                redirect_to home_aluno_path
            end
        end
    end
  end

  def about
  end

  def developers
  end

  def contact
  end

  def tecnico
  end

  def administrador
  end
  
  def aluno
  end
  
  def docente
  end
end
