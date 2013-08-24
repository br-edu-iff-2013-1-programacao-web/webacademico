require 'spec_helper'

describe "matriculados/index" do
  before(:each) do
    assign(:matriculados, [
      stub_model(Matriculado,
        :periodo => "Periodo",
        :estadomatricula => "Estadomatricula",
        :aluno => nil,
        :curso => nil
      ),
      stub_model(Matriculado,
        :periodo => "Periodo",
        :estadomatricula => "Estadomatricula",
        :aluno => nil,
        :curso => nil
      )
    ])
  end

  it "renders a list of matriculados" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Periodo".to_s, :count => 2
    assert_select "tr>td", :text => "Estadomatricula".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
