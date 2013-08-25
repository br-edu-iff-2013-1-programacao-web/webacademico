require 'spec_helper'

describe "notas/new" do
  before(:each) do
    assign(:nota, stub_model(Nota,
      :nota => "MyString",
      :avaliacao => "MyString",
      :diarioaluno => nil
    ).as_new_record)
  end

  it "renders new nota form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", notas_path, "post" do
      assert_select "input#nota_nota[name=?]", "nota[nota]"
      assert_select "input#nota_avaliacao[name=?]", "nota[avaliacao]"
      assert_select "input#nota_diarioaluno[name=?]", "nota[diarioaluno]"
    end
  end
end
