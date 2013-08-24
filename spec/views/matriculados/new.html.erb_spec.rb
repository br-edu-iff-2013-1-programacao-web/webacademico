require 'spec_helper'

describe "matriculados/new" do
  before(:each) do
    assign(:matriculado, stub_model(Matriculado,
      :periodo => "MyString",
      :estadomatricula => "MyString",
      :aluno => nil,
      :curso => nil
    ).as_new_record)
  end

  it "renders new matriculado form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", matriculados_path, "post" do
      assert_select "input#matriculado_periodo[name=?]", "matriculado[periodo]"
      assert_select "input#matriculado_estadomatricula[name=?]", "matriculado[estadomatricula]"
      assert_select "input#matriculado_aluno[name=?]", "matriculado[aluno]"
      assert_select "input#matriculado_curso[name=?]", "matriculado[curso]"
    end
  end
end
