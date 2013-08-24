require 'spec_helper'

describe "docentes/show" do
  before(:each) do
    @docente = assign(:docente, stub_model(Docente,
      :nome => "Nome",
      :matricula => "Matricula",
      :situacao => "Situacao",
      :titulacao => "Titulacao",
      :email => "Email",
      :imageurl => "Imageurl"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Matricula/)
    rendered.should match(/Situacao/)
    rendered.should match(/Titulacao/)
    rendered.should match(/Email/)
    rendered.should match(/Imageurl/)
  end
end
