require 'spec_helper'

describe "frequencias/index" do
  before(:each) do
    assign(:frequencias, [
      stub_model(Frequencia,
        :frequencia => "Frequencia",
        :diarioaluno => nil
      ),
      stub_model(Frequencia,
        :frequencia => "Frequencia",
        :diarioaluno => nil
      )
    ])
  end

  it "renders a list of frequencias" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Frequencia".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
