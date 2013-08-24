# coding: utf-8
require 'spec_helper'

feature 'gerenciar grade' do

  scenario 'incluir grade' do #, :javascript => true do
    disciplina = FactoryGirl.create(:disciplina, :nome => 'Programacao Web')
    curso = FactoryGirl.create(:curso, :nome => 'TADS')
    visit new_grade_path
    preencher_e_verificar_grade 
  end

  scenario 'alterar grade' do #, :javascript => true do
    disciplina = FactoryGirl.create(:disciplina, :nome => 'Programacao Web')
    curso = FactoryGirl.create(:curso, :nome => 'TADS')
    grade = FactoryGirl.create(:grade, :disciplina => disciplina, :curso => curso)
    visit edit_grade_path(grade)
    preencher_e_verificar_grade
  end

  scenario 'excluir grade' do #, :javascript => true do
    disciplina = FactoryGirl.create(:disciplina, :nome => 'Programacao Web')
    curso = FactoryGirl.create(:curso, :nome => 'TADS')
    grade = FactoryGirl.create(:grade, :disciplina => disciplina, :curso => curso)
    visit grades_path
    click_link 'Destroy' 
  end

  def preencher_e_verificar_grade
    fill_in 'Periodo', :with => '1'
    fill_in 'Referencia', :with => 'Referencia'
    
    select 'Programacao Web', :from => 'Disciplina'
    select 'TADS', :from => 'Curso'
    
    click_button 'Salvar'
    
    page.should have_content 'Disciplina: Programacao Web'
    page.should have_content 'Curso: TADS'
    page.should have_content 'Periodo: 1'
    page.should have_content 'Referencia: Referencia'
  end    

end
