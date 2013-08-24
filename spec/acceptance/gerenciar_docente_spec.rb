# coding: utf-8
require 'spec_helper'

feature 'gerenciar docente' do

  scenario 'incluir docente' do #, :javascript => true do
    visit new_docente_path
    preencher_e_verificar_docente 
  end

  scenario 'alterar docente' do #, :javascript => true do
    docente = FactoryGirl.create(:docente)
    visit edit_docente_path(docente)
    preencher_e_verificar_docente
  end

  scenario 'excluir docente' do #, :javascript => true do
    docente = FactoryGirl.create(:docente)
    visit docentes_path
    click_link 'Destroy' 
  end

  def preencher_e_verificar_docente
    fill_in 'Titulacao', :with => 'Bacharel'
    fill_in 'Matricula', :with => '12345'
    fill_in 'Situacao', :with => 'Concursado'
    fill_in 'Nome', :with => 'Denaildo'
    fill_in 'Email', :with => 'myemail@email.com'
    fill_in 'Foto', :with => '/imagens/12345.jpg'
    
    click_button 'Salvar'
    
    page.should have_content 'Titulacao: Bacharel'
    page.should have_content 'Matricula: 12345'
    page.should have_content 'Situacao: Concursado'
    page.should have_content 'Nome: Denaildo'
    page.should have_content 'Email: myemail@email.com'
    page.should have_content 'Foto: /imagens/12345.jpg'
  end    

end
