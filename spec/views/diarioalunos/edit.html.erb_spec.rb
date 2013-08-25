require 'spec_helper'

describe "diarioalunos/edit" do
  before(:each) do
    @diarioaluno = assign(:diarioaluno, stub_model(Diarioaluno,
      :mediafinal => "MyString",
      :frequenciafinal => "MyString",
      :diario => nil,
      :matriculado => nil
    ))
  end

  it "renders the edit diarioaluno form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", diarioaluno_path(@diarioaluno), "post" do
      assert_select "input#diarioaluno_mediafinal[name=?]", "diarioaluno[mediafinal]"
      assert_select "input#diarioaluno_frequenciafinal[name=?]", "diarioaluno[frequenciafinal]"
      assert_select "input#diarioaluno_diario[name=?]", "diarioaluno[diario]"
      assert_select "input#diarioaluno_matriculado[name=?]", "diarioaluno[matriculado]"
    end
  end
end
