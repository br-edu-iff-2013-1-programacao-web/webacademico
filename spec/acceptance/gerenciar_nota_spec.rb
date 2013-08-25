# coding: utf-8
require 'spec_helper'

feature 'gerenciar nota' do

  scenario 'incluir nota' do #, :javascript => true do
    diarioaluno = FactoryGirl.create(:diarioaluno, :mediafinal => '6')
    nota = FactoryGirl.create(:nota)
    visit new_nota_path
    preencher_e_verificar_nota 
  end

  scenario 'alterar nota' do #, :javascript => true do
    diarioaluno = FactoryGirl.create(:diarioaluno, :mediafinal => '6')
    nota = FactoryGirl.create(:nota)
    visit edit_nota_path(nota)
    preencher_e_verificar_nota
  end

  scenario 'excluir nota' do #, :javascript => true do
    diarioaluno = FactoryGirl.create(:diarioaluno, :mediafinal => '6')
    nota = FactoryGirl.create(:nota)
    visit notas_path
    click_link 'Destroy' 
  end

  def preencher_e_verificar_nota
    fill_in 'Nota', :with => '8'
    fill_in 'Avaliacao', :with => 'P2'
    
    select '6', :from => 'Media'
    
    click_button 'Salvar'
    
    page.should have_content 'Nota: 8'
    page.should have_content 'Avaliacao: P2'
    page.should have_content 'Media: 6'
  end    

end
