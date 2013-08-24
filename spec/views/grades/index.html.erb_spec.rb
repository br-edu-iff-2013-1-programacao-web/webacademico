require 'spec_helper'

describe "grades/index" do
  before(:each) do
    assign(:grades, [
      stub_model(Grade,
        :periodo => "Periodo",
        :referencia => "Referencia",
        :disciplina => nil,
        :curso => nil
      ),
      stub_model(Grade,
        :periodo => "Periodo",
        :referencia => "Referencia",
        :disciplina => nil,
        :curso => nil
      )
    ])
  end

  it "renders a list of grades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Periodo".to_s, :count => 2
    assert_select "tr>td", :text => "Referencia".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
