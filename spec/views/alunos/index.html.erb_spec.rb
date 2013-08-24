require 'spec_helper'

describe "alunos/index" do
  before(:each) do
    assign(:alunos, [
      stub_model(Aluno,
        :nome => "Nome",
        :matricula => "Matricula",
        :pai => "Pai",
        :mae => "Mae",
        :cpf => "Cpf",
        :rg => "Rg",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :uf => "Uf",
        :email => "Email",
        :imageurl => "Imageurl"
      ),
      stub_model(Aluno,
        :nome => "Nome",
        :matricula => "Matricula",
        :pai => "Pai",
        :mae => "Mae",
        :cpf => "Cpf",
        :rg => "Rg",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :uf => "Uf",
        :email => "Email",
        :imageurl => "Imageurl"
      )
    ])
  end

  it "renders a list of alunos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Matricula".to_s, :count => 2
    assert_select "tr>td", :text => "Pai".to_s, :count => 2
    assert_select "tr>td", :text => "Mae".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Rg".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Uf".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Imageurl".to_s, :count => 2
  end
end
