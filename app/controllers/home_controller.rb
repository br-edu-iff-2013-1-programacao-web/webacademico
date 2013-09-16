class HomeController < ApplicationController
  before_filter :authenticate_user!, :except => [:about, :developers, :contact]
  def index
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
