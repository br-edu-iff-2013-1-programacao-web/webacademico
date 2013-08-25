require 'spec_helper'

describe "notas/edit" do
  before(:each) do
    @nota = assign(:nota, stub_model(Nota,
      :nota => "MyString",
      :avaliacao => "MyString",
      :diarioaluno => nil
    ))
  end

  it "renders the edit nota form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", nota_path(@nota), "post" do
      assert_select "input#nota_nota[name=?]", "nota[nota]"
      assert_select "input#nota_avaliacao[name=?]", "nota[avaliacao]"
      assert_select "input#nota_diarioaluno[name=?]", "nota[diarioaluno]"
    end
  end
end
