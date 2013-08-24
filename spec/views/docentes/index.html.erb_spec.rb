require 'spec_helper'

describe "docentes/index" do
  before(:each) do
    assign(:docentes, [
      stub_model(Docente,
        :nome => "Nome",
        :matricula => "Matricula",
        :situacao => "Situacao",
        :titulacao => "Titulacao",
        :email => "Email",
        :imageurl => "Imageurl"
      ),
      stub_model(Docente,
        :nome => "Nome",
        :matricula => "Matricula",
        :situacao => "Situacao",
        :titulacao => "Titulacao",
        :email => "Email",
        :imageurl => "Imageurl"
      )
    ])
  end

  it "renders a list of docentes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Matricula".to_s, :count => 2
    assert_select "tr>td", :text => "Situacao".to_s, :count => 2
    assert_select "tr>td", :text => "Titulacao".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Imageurl".to_s, :count => 2
  end
end
