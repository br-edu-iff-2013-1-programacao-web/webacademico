require 'spec_helper'

describe "frequencias/new" do
  before(:each) do
    assign(:frequencia, stub_model(Frequencia,
      :frequencia => "MyString",
      :diarioaluno => nil
    ).as_new_record)
  end

  it "renders new frequencia form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", frequencias_path, "post" do
      assert_select "input#frequencia_frequencia[name=?]", "frequencia[frequencia]"
      assert_select "input#frequencia_diarioaluno[name=?]", "frequencia[diarioaluno]"
    end
  end
end
