require 'spec_helper'

describe "frequencias/edit" do
  before(:each) do
    @frequencia = assign(:frequencia, stub_model(Frequencia,
      :frequencia => "MyString",
      :diarioaluno => nil
    ))
  end

  it "renders the edit frequencia form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", frequencia_path(@frequencia), "post" do
      assert_select "input#frequencia_frequencia[name=?]", "frequencia[frequencia]"
      assert_select "input#frequencia_diarioaluno[name=?]", "frequencia[diarioaluno]"
    end
  end
end
