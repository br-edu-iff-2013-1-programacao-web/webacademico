require 'spec_helper'

describe "cursos/edit" do
  before(:each) do
    @curso = assign(:curso, stub_model(Curso,
      :graduacao => "MyString",
      :nome => "MyString",
      :duracao => "MyString",
      :matrizcurricular => "MyString",
      :regime => "MyString",
      :ementa => "MyString",
      :referencia => "MyString"
    ))
  end

  it "renders the edit curso form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", curso_path(@curso), "post" do
      assert_select "input#curso_graduacao[name=?]", "curso[graduacao]"
      assert_select "input#curso_nome[name=?]", "curso[nome]"
      assert_select "input#curso_duracao[name=?]", "curso[duracao]"
      assert_select "input#curso_matrizcurricular[name=?]", "curso[matrizcurricular]"
      assert_select "input#curso_regime[name=?]", "curso[regime]"
      assert_select "input#curso_ementa[name=?]", "curso[ementa]"
      assert_select "input#curso_referencia[name=?]", "curso[referencia]"
    end
  end
end
