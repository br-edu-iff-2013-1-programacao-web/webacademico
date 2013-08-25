require 'spec_helper'

describe "diarioalunos/new" do
  before(:each) do
    assign(:diarioaluno, stub_model(Diarioaluno,
      :mediafinal => "MyString",
      :frequenciafinal => "MyString",
      :diario => nil,
      :matriculado => nil
    ).as_new_record)
  end

  it "renders new diarioaluno form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", diarioalunos_path, "post" do
      assert_select "input#diarioaluno_mediafinal[name=?]", "diarioaluno[mediafinal]"
      assert_select "input#diarioaluno_frequenciafinal[name=?]", "diarioaluno[frequenciafinal]"
      assert_select "input#diarioaluno_diario[name=?]", "diarioaluno[diario]"
      assert_select "input#diarioaluno_matriculado[name=?]", "diarioaluno[matriculado]"
    end
  end
end
