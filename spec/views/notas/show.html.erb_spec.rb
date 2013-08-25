require 'spec_helper'

describe "notas/show" do
  before(:each) do
    @nota = assign(:nota, stub_model(Nota,
      :nota => "Nota",
      :avaliacao => "Avaliacao",
      :diarioaluno => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nota/)
    rendered.should match(/Avaliacao/)
    rendered.should match(//)
  end
end
