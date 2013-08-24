# coding: utf-8
require 'spec_helper'

feature 'gerenciar diario' do

  scenario 'incluir diario' do #, :javascript => true do
    grade = FactoryGirl.create(:grade, :periodo => '1')
    docente = FactoryGirl.create(:docente, :nome => 'Luiz')
    visit new_diario_path
    preencher_e_verificar_diario
  end

  scenario 'alterar diario' do #, :javascript => true do
    grade = FactoryGirl.create(:grade, :periodo => '1')
    docente = FactoryGirl.create(:docente, :nome => 'Luiz')
    diario = FactoryGirl.create(:diario, :grade => grade, :docente => docente)
    visit edit_diario_path(diario)
    preencher_e_verificar_diario
  end

  scenario 'excluir diario' do #, :javascript => true do
    grade = FactoryGirl.create(:grade, :periodo => '1')
    docente = FactoryGirl.create(:docente, :nome => 'Luiz')
    diario = FactoryGirl.create(:diario, :grade => grade, :docente => docente)
    visit diarios_path
    click_link 'Destroy' 
  end

  def preencher_e_verificar_diario
    fill_in 'Ano', :with => '2013'
    fill_in 'Semestre', :with => '1'
    fill_in 'Turno', :with => 'Noturno'
    fill_in 'Pasta', :with => 'Pasta'
    
    select '1', :from => 'Periodo'
    select 'Luiz', :from => 'Docente'
    
    click_button 'Salvar'
    
    page.should have_content 'Periodo: 1'
    page.should have_content 'Docente: Luiz'
    page.should have_content 'Ano: 2013'
    page.should have_content 'Semestre: 1'
    page.should have_content 'Turno: Noturno'
    page.should have_content 'Pasta: Pasta'
  end    

end
