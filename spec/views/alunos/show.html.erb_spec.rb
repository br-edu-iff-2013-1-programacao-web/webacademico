require 'spec_helper'

describe "alunos/show" do
  before(:each) do
    @aluno = assign(:aluno, stub_model(Aluno,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Matricula/)
    rendered.should match(/Pai/)
    rendered.should match(/Mae/)
    rendered.should match(/Cpf/)
    rendered.should match(/Rg/)
    rendered.should match(/Endereco/)
    rendered.should match(/Bairro/)
    rendered.should match(/Cidade/)
    rendered.should match(/Uf/)
    rendered.should match(/Email/)
    rendered.should match(/Imageurl/)
  end
end
