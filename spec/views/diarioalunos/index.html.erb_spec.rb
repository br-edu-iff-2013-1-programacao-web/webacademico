require 'spec_helper'

describe "diarioalunos/index" do
  before(:each) do
    assign(:diarioalunos, [
      stub_model(Diarioaluno,
        :mediafinal => "Mediafinal",
        :frequenciafinal => "Frequenciafinal",
        :diario => nil,
        :matriculado => nil
      ),
      stub_model(Diarioaluno,
        :mediafinal => "Mediafinal",
        :frequenciafinal => "Frequenciafinal",
        :diario => nil,
        :matriculado => nil
      )
    ])
  end

  it "renders a list of diarioalunos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mediafinal".to_s, :count => 2
    assert_select "tr>td", :text => "Frequenciafinal".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
