# coding: utf-8
require 'spec_helper'

feature 'gerenciar aluno' do

  scenario 'incluir aluno' do #, :javascript => true do
    visit new_aluno_path
    preencher_e_verificar_aluno 
  end

  scenario 'alterar aluno' do #, :javascript => true do
    aluno = FactoryGirl.create(:aluno)
    visit edit_aluno_path(aluno)
    preencher_e_verificar_aluno
  end

  scenario 'excluir aluno' do #, :javascript => true do
    aluno = FactoryGirl.create(:aluno)
    visit alunos_path
    click_link 'Destroy' 
  end

  def preencher_e_verificar_aluno
    fill_in 'Matricula', :with => '123456'
    fill_in 'Nome', :with => 'Jose'
    fill_in 'Pai', :with => 'Joao'
    fill_in 'Mae', :with => 'Maria'
    fill_in 'RG', :with => '12345678'
    fill_in 'CPF', :with => '12345678900'
    fill_in 'Endereco', :with => 'Rua dos Bobos, 47'
    fill_in 'Bairro', :with => 'Centro'
    fill_in 'Cidade', :with => 'Campos'
    fill_in 'UF', :with => 'RJ'
    fill_in 'Foto', :with => '/imagens/12345.jpg'
    fill_in 'Email', :with => 'myemail@email.com'
    
    click_button 'Salvar'
    
    page.should have_content 'Matricula: 123456'
    page.should have_content 'Nome: Jose'
    page.should have_content 'Pai: Joao'
    page.should have_content 'Mae: Maria'
    page.should have_content 'RG: 12345678'
    page.should have_content 'CPF: 12345678900'
    page.should have_content 'Endereco: Rua dos Bobos, 47'
    page.should have_content 'Bairro: Centro'
    page.should have_content 'Cidade: Campos'
    page.should have_content 'UF: RJ'
    page.should have_content 'Foto: /imagens/12345.jpg'
    page.should have_content 'Email: myemail@email.com'
  end    

end
