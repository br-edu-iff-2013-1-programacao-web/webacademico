require 'spec_helper'

describe "matriculados/edit" do
  before(:each) do
    @matriculado = assign(:matriculado, stub_model(Matriculado,
      :periodo => "MyString",
      :estadomatricula => "MyString",
      :aluno => nil,
      :curso => nil
    ))
  end

  it "renders the edit matriculado form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", matriculado_path(@matriculado), "post" do
      assert_select "input#matriculado_periodo[name=?]", "matriculado[periodo]"
      assert_select "input#matriculado_estadomatricula[name=?]", "matriculado[estadomatricula]"
      assert_select "input#matriculado_aluno[name=?]", "matriculado[aluno]"
      assert_select "input#matriculado_curso[name=?]", "matriculado[curso]"
    end
  end
end
