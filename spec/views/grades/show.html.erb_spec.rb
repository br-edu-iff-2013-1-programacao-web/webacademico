require 'spec_helper'

describe "grades/show" do
  before(:each) do
    @grade = assign(:grade, stub_model(Grade,
      :periodo => "Periodo",
      :referencia => "Referencia",
      :disciplina => nil,
      :curso => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Periodo/)
    rendered.should match(/Referencia/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
