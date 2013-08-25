# coding: utf-8
require 'spec_helper'

feature 'gerenciar frequencia' do

  scenario 'incluir frequencia' do #, :javascript => true do
    diarioaluno = FactoryGirl.create(:diarioaluno, :frequenciafinal => '20')
    frequencia = FactoryGirl.create(:frequencia)
    visit new_frequencia_path
    preencher_e_verificar_frequencia 
  end

  scenario 'alterar frequencia' do #, :javascript => true do
    diarioaluno = FactoryGirl.create(:diarioaluno, :frequenciafinal => '20')
    frequencia = FactoryGirl.create(:frequencia)
    visit edit_frequencia_path(frequencia)
    preencher_e_verificar_frequencia
  end

  scenario 'excluir frequencia' do #, :javascript => true do
    diarioaluno = FactoryGirl.create(:diarioaluno, :frequenciafinal => '20')
    frequencia = FactoryGirl.create(:frequencia)
    visit frequencias_path
    click_link 'Destroy' 
  end

  def preencher_e_verificar_frequencia
    fill_in 'Data', :with => '2013-07-08'
    fill_in 'Frequencia', :with => '2'
    
    select '20', :from => 'Frequencia Total'
    
    click_button 'Salvar'
    
    page.should have_content 'Data: 2013-07-08'
    page.should have_content 'Frequencia: 2'
    page.should have_content 'Frequencia Total: 20'
  end    

end
