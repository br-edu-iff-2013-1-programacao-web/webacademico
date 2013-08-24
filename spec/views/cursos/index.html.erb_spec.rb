require 'spec_helper'

describe "cursos/index" do
  before(:each) do
    assign(:cursos, [
      stub_model(Curso,
        :graduacao => "Graduacao",
        :nome => "Nome",
        :duracao => "Duracao",
        :matrizcurricular => "Matrizcurricular",
        :regime => "Regime",
        :ementa => "Ementa",
        :referencia => "Referencia"
      ),
      stub_model(Curso,
        :graduacao => "Graduacao",
        :nome => "Nome",
        :duracao => "Duracao",
        :matrizcurricular => "Matrizcurricular",
        :regime => "Regime",
        :ementa => "Ementa",
        :referencia => "Referencia"
      )
    ])
  end

  it "renders a list of cursos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Graduacao".to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Duracao".to_s, :count => 2
    assert_select "tr>td", :text => "Matrizcurricular".to_s, :count => 2
    assert_select "tr>td", :text => "Regime".to_s, :count => 2
    assert_select "tr>td", :text => "Ementa".to_s, :count => 2
    assert_select "tr>td", :text => "Referencia".to_s, :count => 2
  end
end
