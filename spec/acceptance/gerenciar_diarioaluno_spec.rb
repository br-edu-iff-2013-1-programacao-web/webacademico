# coding: utf-8
require 'spec_helper'

feature 'gerenciar diarioaluno' do

  scenario 'incluir diarioaluno' do #, :javascript => true do
    diario = FactoryGirl.create(:diario, :pasta => '12D2013')
    matriculado = FactoryGirl.create(:matriculado, :estadomatricula => 'Cursando')
    visit new_diarioaluno_path
    preencher_e_verificar_diarioaluno 
  end

  scenario 'alterar diarioaluno' do #, :javascript => true do
    diario = FactoryGirl.create(:diario, :pasta => '12D2013')
    matriculado = FactoryGirl.create(:matriculado, :estadomatricula => 'Cursando')
    diarioaluno = FactoryGirl.create(:diarioaluno, :diario => diario, :matriculado => matriculado)
    visit edit_diarioaluno_path(diarioaluno)
    preencher_e_verificar_diarioaluno
  end

  scenario 'excluir diarioaluno' do #, :javascript => true do
    diario = FactoryGirl.create(:diario, :pasta => '12D2013')
    matriculado = FactoryGirl.create(:matriculado, :estadomatricula => 'Cursando')
    diarioaluno = FactoryGirl.create(:diarioaluno, :diario => diario, :matriculado => matriculado)
    visit diarioalunos_path
    click_link 'Destroy' 
  end

  def preencher_e_verificar_diarioaluno
    fill_in 'Media Final', :with => '10'
    fill_in 'Frequencia Final', :with => '80'
    
    select '12D2013', :from => 'Diario'
    select 'Cursando', :from => 'Status'
    
    click_button 'Salvar'
    
    page.should have_content 'Diario: 12D2013'
    page.should have_content 'Status: Cursando'
    page.should have_content 'Media Final: 10'
    page.should have_content 'Frequencia Final: 80'
  end    

end
