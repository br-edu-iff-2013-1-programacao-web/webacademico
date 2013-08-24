# coding: utf-8
require 'spec_helper'

feature 'gerenciar matriculado' do

  scenario 'incluir matriculado' do #, :javascript => true do
    aluno = FactoryGirl.create(:aluno, :nome => 'Kissila')
    curso = FactoryGirl.create(:curso, :nome => 'TADS')
    visit new_matriculado_path
    preencher_e_verificar_matriculado 
  end

  scenario 'alterar matriculado' do #, :javascript => true do
    aluno = FactoryGirl.create(:aluno, :nome => 'Kissila')
    curso = FactoryGirl.create(:curso, :nome => 'TADS')
    matriculado = FactoryGirl.create(:matriculado, :aluno => aluno, :curso => curso)
    visit edit_matriculado_path(matriculado)
    preencher_e_verificar_matriculado
  end

  scenario 'excluir matriculado' do #, :javascript => true do
    aluno = FactoryGirl.create(:aluno, :nome => 'Kissila')
    curso = FactoryGirl.create(:curso, :nome => 'TADS')
    matriculado = FactoryGirl.create(:matriculado, :aluno => aluno, :curso => curso)
    visit matriculados_path
    click_link 'Destroy' 
  end

  def preencher_e_verificar_matriculado
    fill_in 'Periodo', :with => '1'
    fill_in 'Situacao', :with => 'Cursando'
    
    select 'Kissila', :from => 'Aluno'
    select 'TADS', :from => 'Curso'
    
    click_button 'Salvar'
    
    page.should have_content 'Aluno: Kissila'
    page.should have_content 'Curso: TADS'
    page.should have_content 'Situacao: Cursando'
    page.should have_content 'Periodo: 1'
  end    

end
