# coding: utf-8
require 'spec_helper'

feature 'gerenciar disciplina' do

  scenario 'incluir disciplina' do #, :javascript => true do
    visit new_disciplina_path
    preencher_e_verificar_disciplina 
  end

  scenario 'alterar disciplina' do #, :javascript => true do
    disciplina = FactoryGirl.create(:disciplina)
    visit edit_disciplina_path(disciplina)
    preencher_e_verificar_disciplina
  end

  scenario 'excluir disciplina' do #, :javascript => true do
    disciplina = FactoryGirl.create(:disciplina)
    visit disciplinas_path
    click_link 'Destroy' 
  end

  def preencher_e_verificar_disciplina
    fill_in 'Nome', :with => 'Calculo II'
    fill_in 'Carga Horaria', :with => '80 Aulas'
    fill_in 'Ementa', :with => 'Ementa'
    fill_in 'Objetivo', :with => 'Objetivo'
    fill_in 'Pre Requisito', :with => 'Calculo I'
    fill_in 'Credito', :with => '4'
    fill_in 'Referencia', :with => 'Referencia'
    
    click_button 'Salvar'
    
    page.should have_content 'Nome: Calculo II'
    page.should have_content 'Carga Horaria: 80 Aulas'
    page.should have_content 'Ementa: Ementa'
    page.should have_content 'Objetivo: Objetivo'
    page.should have_content 'Pre Requisito: Calculo I'
    page.should have_content 'Credito: 4'
    page.should have_content 'Referencia: Referencia'
  end    

end
