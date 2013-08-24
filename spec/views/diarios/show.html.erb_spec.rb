require 'spec_helper'

describe "diarios/show" do
  before(:each) do
    @diario = assign(:diario, stub_model(Diario,
      :ano => "Ano",
      :semestre => "Semestre",
      :turno => "Turno",
      :pasta => "Pasta",
      :grade => nil,
      :docente => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ano/)
    rendered.should match(/Semestre/)
    rendered.should match(/Turno/)
    rendered.should match(/Pasta/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
