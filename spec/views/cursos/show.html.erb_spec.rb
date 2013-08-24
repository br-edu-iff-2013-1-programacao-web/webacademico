require 'spec_helper'

describe "cursos/show" do
  before(:each) do
    @curso = assign(:curso, stub_model(Curso,
      :graduacao => "Graduacao",
      :nome => "Nome",
      :duracao => "Duracao",
      :matrizcurricular => "Matrizcurricular",
      :regime => "Regime",
      :ementa => "Ementa",
      :referencia => "Referencia"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Graduacao/)
    rendered.should match(/Nome/)
    rendered.should match(/Duracao/)
    rendered.should match(/Matrizcurricular/)
    rendered.should match(/Regime/)
    rendered.should match(/Ementa/)
    rendered.should match(/Referencia/)
  end
end
