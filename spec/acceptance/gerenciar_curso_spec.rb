# coding: utf-8
require 'spec_helper'

feature 'gerenciar curso' do

  scenario 'incluir curso' do #, :javascript => true do
    visit new_curso_path
    preencher_e_verificar_curso 
  end

  scenario 'alterar curso' do #, :javascript => true do
    curso = FactoryGirl.create(:curso)
    visit edit_curso_path(curso)
    preencher_e_verificar_curso
  end

  scenario 'excluir curso' do #, :javascript => true do
    curso = FactoryGirl.create(:curso)
    visit cursos_path
    click_link 'Destroy' 
  end

  def preencher_e_verificar_curso
    fill_in 'Graduacao', :with => 'Bacharel'
    fill_in 'Nome', :with => 'Sistemas de Informação'
    fill_in 'Duracao', :with => '4 Anos'
    fill_in 'Matriz Curricular', :with => 'Matriz'
    fill_in 'Regime', :with => 'Seriado'
    fill_in 'Ementa', :with => 'Ementa'
    fill_in 'Referencia', :with => 'Referencia'    
    click_button 'Salvar'
    
    page.should have_content 'Graduacao: Bacharel'
    page.should have_content 'Nome: Sistemas de Informação'
    page.should have_content 'Duracao: 4 Anos'
    page.should have_content 'Matriz Curricular: Matriz'
    page.should have_content 'Regime: Seriado'
    page.should have_content 'Ementa: Ementa'
	page.should have_content 'Referencia: Referencia'  
  end    

end
