require 'spec_helper'

describe "diarioalunos/show" do
  before(:each) do
    @diarioaluno = assign(:diarioaluno, stub_model(Diarioaluno,
      :mediafinal => "Mediafinal",
      :frequenciafinal => "Frequenciafinal",
      :diario => nil,
      :matriculado => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mediafinal/)
    rendered.should match(/Frequenciafinal/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
