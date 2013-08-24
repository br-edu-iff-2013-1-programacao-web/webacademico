require 'spec_helper'

describe "docentes/edit" do
  before(:each) do
    @docente = assign(:docente, stub_model(Docente,
      :nome => "MyString",
      :matricula => "MyString",
      :situacao => "MyString",
      :titulacao => "MyString",
      :email => "MyString",
      :imageurl => "MyString"
    ))
  end

  it "renders the edit docente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", docente_path(@docente), "post" do
      assert_select "input#docente_nome[name=?]", "docente[nome]"
      assert_select "input#docente_matricula[name=?]", "docente[matricula]"
      assert_select "input#docente_situacao[name=?]", "docente[situacao]"
      assert_select "input#docente_titulacao[name=?]", "docente[titulacao]"
      assert_select "input#docente_email[name=?]", "docente[email]"
      assert_select "input#docente_imageurl[name=?]", "docente[imageurl]"
    end
  end
end
