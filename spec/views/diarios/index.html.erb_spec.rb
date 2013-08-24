require 'spec_helper'

describe "diarios/index" do
  before(:each) do
    assign(:diarios, [
      stub_model(Diario,
        :ano => "Ano",
        :semestre => "Semestre",
        :turno => "Turno",
        :pasta => "Pasta",
        :grade => nil,
        :docente => nil
      ),
      stub_model(Diario,
        :ano => "Ano",
        :semestre => "Semestre",
        :turno => "Turno",
        :pasta => "Pasta",
        :grade => nil,
        :docente => nil
      )
    ])
  end

  it "renders a list of diarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ano".to_s, :count => 2
    assert_select "tr>td", :text => "Semestre".to_s, :count => 2
    assert_select "tr>td", :text => "Turno".to_s, :count => 2
    assert_select "tr>td", :text => "Pasta".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
