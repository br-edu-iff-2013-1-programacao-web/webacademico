require 'spec_helper'

describe "matriculados/show" do
  before(:each) do
    @matriculado = assign(:matriculado, stub_model(Matriculado,
      :periodo => "Periodo",
      :estadomatricula => "Estadomatricula",
      :aluno => nil,
      :curso => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Periodo/)
    rendered.should match(/Estadomatricula/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
