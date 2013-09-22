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
#                @docentes = Docente.all
#                @docentes.each do |docente|
#                    if docente.matricula == current_user.username
#                        redirect_to docente
#                    end
#                end
                redirect_to docentes_path
            else
#                @alunos = Aluno.all
#                @alunos.each do |aluno|
#                    if aluno.matricula == current_user.username
#                        redirect_to aluno
#                    end
#                end
                redirect_to alunos_path
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
end
