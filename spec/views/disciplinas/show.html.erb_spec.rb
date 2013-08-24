require 'spec_helper'

describe "disciplinas/show" do
  before(:each) do
    @disciplina = assign(:disciplina, stub_model(Disciplina,
      :nome => "Nome",
      :cargahoraria => "Cargahoraria",
      :ementa => "Ementa",
      :objetivo => "Objetivo",
      :prerequisito => "Prerequisito",
      :credito => "Credito",
      :referencia => "Referencia"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Cargahoraria/)
    rendered.should match(/Ementa/)
    rendered.should match(/Objetivo/)
    rendered.should match(/Prerequisito/)
    rendered.should match(/Credito/)
    rendered.should match(/Referencia/)
  end
end
