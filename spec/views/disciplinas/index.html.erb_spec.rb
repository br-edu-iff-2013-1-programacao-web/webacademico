require 'spec_helper'

describe "disciplinas/index" do
  before(:each) do
    assign(:disciplinas, [
      stub_model(Disciplina,
        :nome => "Nome",
        :cargahoraria => "Cargahoraria",
        :ementa => "Ementa",
        :objetivo => "Objetivo",
        :prerequisito => "Prerequisito",
        :credito => "Credito",
        :referencia => "Referencia"
      ),
      stub_model(Disciplina,
        :nome => "Nome",
        :cargahoraria => "Cargahoraria",
        :ementa => "Ementa",
        :objetivo => "Objetivo",
        :prerequisito => "Prerequisito",
        :credito => "Credito",
        :referencia => "Referencia"
      )
    ])
  end

  it "renders a list of disciplinas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cargahoraria".to_s, :count => 2
    assert_select "tr>td", :text => "Ementa".to_s, :count => 2
    assert_select "tr>td", :text => "Objetivo".to_s, :count => 2
    assert_select "tr>td", :text => "Prerequisito".to_s, :count => 2
    assert_select "tr>td", :text => "Credito".to_s, :count => 2
    assert_select "tr>td", :text => "Referencia".to_s, :count => 2
  end
end
