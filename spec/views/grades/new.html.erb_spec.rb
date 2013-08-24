require 'spec_helper'

describe "grades/new" do
  before(:each) do
    assign(:grade, stub_model(Grade,
      :periodo => "MyString",
      :referencia => "MyString",
      :disciplina => nil,
      :curso => nil
    ).as_new_record)
  end

  it "renders new grade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", grades_path, "post" do
      assert_select "input#grade_periodo[name=?]", "grade[periodo]"
      assert_select "input#grade_referencia[name=?]", "grade[referencia]"
      assert_select "input#grade_disciplina[name=?]", "grade[disciplina]"
      assert_select "input#grade_curso[name=?]", "grade[curso]"
    end
  end
end
