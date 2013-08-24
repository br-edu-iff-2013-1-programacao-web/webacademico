require 'spec_helper'

describe "docentes/new" do
  before(:each) do
    assign(:docente, stub_model(Docente,
      :nome => "MyString",
      :matricula => "MyString",
      :situacao => "MyString",
      :titulacao => "MyString",
      :email => "MyString",
      :imageurl => "MyString"
    ).as_new_record)
  end

  it "renders new docente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", docentes_path, "post" do
      assert_select "input#docente_nome[name=?]", "docente[nome]"
      assert_select "input#docente_matricula[name=?]", "docente[matricula]"
      assert_select "input#docente_situacao[name=?]", "docente[situacao]"
      assert_select "input#docente_titulacao[name=?]", "docente[titulacao]"
      assert_select "input#docente_email[name=?]", "docente[email]"
      assert_select "input#docente_imageurl[name=?]", "docente[imageurl]"
    end
  end
end
