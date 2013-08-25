require 'spec_helper'

describe "notas/index" do
  before(:each) do
    assign(:notas, [
      stub_model(Nota,
        :nota => "Nota",
        :avaliacao => "Avaliacao",
        :diarioaluno => nil
      ),
      stub_model(Nota,
        :nota => "Nota",
        :avaliacao => "Avaliacao",
        :diarioaluno => nil
      )
    ])
  end

  it "renders a list of notas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nota".to_s, :count => 2
    assert_select "tr>td", :text => "Avaliacao".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
