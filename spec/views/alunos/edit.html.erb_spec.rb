require 'spec_helper'

describe "alunos/edit" do
  before(:each) do
    @aluno = assign(:aluno, stub_model(Aluno,
      :nome => "MyString",
      :matricula => "MyString",
      :pai => "MyString",
      :mae => "MyString",
      :cpf => "MyString",
      :rg => "MyString",
      :endereco => "MyString",
      :bairro => "MyString",
      :cidade => "MyString",
      :uf => "MyString",
      :email => "MyString",
      :imageurl => "MyString"
    ))
  end

  it "renders the edit aluno form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", aluno_path(@aluno), "post" do
      assert_select "input#aluno_nome[name=?]", "aluno[nome]"
      assert_select "input#aluno_matricula[name=?]", "aluno[matricula]"
      assert_select "input#aluno_pai[name=?]", "aluno[pai]"
      assert_select "input#aluno_mae[name=?]", "aluno[mae]"
      assert_select "input#aluno_cpf[name=?]", "aluno[cpf]"
      assert_select "input#aluno_rg[name=?]", "aluno[rg]"
      assert_select "input#aluno_endereco[name=?]", "aluno[endereco]"
      assert_select "input#aluno_bairro[name=?]", "aluno[bairro]"
      assert_select "input#aluno_cidade[name=?]", "aluno[cidade]"
      assert_select "input#aluno_uf[name=?]", "aluno[uf]"
      assert_select "input#aluno_email[name=?]", "aluno[email]"
      assert_select "input#aluno_imageurl[name=?]", "aluno[imageurl]"
    end
  end
end
