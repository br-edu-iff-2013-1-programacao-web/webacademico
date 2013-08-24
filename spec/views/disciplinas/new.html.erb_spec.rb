require 'spec_helper'

describe "disciplinas/new" do
  before(:each) do
    assign(:disciplina, stub_model(Disciplina,
      :nome => "MyString",
      :cargahoraria => "MyString",
      :ementa => "MyString",
      :objetivo => "MyString",
      :prerequisito => "MyString",
      :credito => "MyString",
      :referencia => "MyString"
    ).as_new_record)
  end

  it "renders new disciplina form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", disciplinas_path, "post" do
      assert_select "input#disciplina_nome[name=?]", "disciplina[nome]"
      assert_select "input#disciplina_cargahoraria[name=?]", "disciplina[cargahoraria]"
      assert_select "input#disciplina_ementa[name=?]", "disciplina[ementa]"
      assert_select "input#disciplina_objetivo[name=?]", "disciplina[objetivo]"
      assert_select "input#disciplina_prerequisito[name=?]", "disciplina[prerequisito]"
      assert_select "input#disciplina_credito[name=?]", "disciplina[credito]"
      assert_select "input#disciplina_referencia[name=?]", "disciplina[referencia]"
    end
  end
end
