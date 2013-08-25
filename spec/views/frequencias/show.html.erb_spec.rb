require 'spec_helper'

describe "frequencias/show" do
  before(:each) do
    @frequencia = assign(:frequencia, stub_model(Frequencia,
      :frequencia => "Frequencia",
      :diarioaluno => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Frequencia/)
    rendered.should match(//)
  end
end
