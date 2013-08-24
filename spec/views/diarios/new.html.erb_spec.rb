require 'spec_helper'

describe "diarios/new" do
  before(:each) do
    assign(:diario, stub_model(Diario,
      :ano => "MyString",
      :semestre => "MyString",
      :turno => "MyString",
      :pasta => "MyString",
      :grade => nil,
      :docente => nil
    ).as_new_record)
  end

  it "renders new diario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", diarios_path, "post" do
      assert_select "input#diario_ano[name=?]", "diario[ano]"
      assert_select "input#diario_semestre[name=?]", "diario[semestre]"
      assert_select "input#diario_turno[name=?]", "diario[turno]"
      assert_select "input#diario_pasta[name=?]", "diario[pasta]"
      assert_select "input#diario_grade[name=?]", "diario[grade]"
      assert_select "input#diario_docente[name=?]", "diario[docente]"
    end
  end
end
