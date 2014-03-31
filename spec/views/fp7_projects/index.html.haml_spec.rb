require 'spec_helper'

describe "fp7_projects/index" do
  before(:each) do
    assign(:fp7_projects, [
      stub_model(Fp7Project,
        :rcn => "Rcn",
        :project_title => "Project Title",
        :status => "Status",
        :contract_number => "Contract Number",
        :keywords => "Keywords",
        :total_cost => "9.99",
        :total_funding => "9.99",
        :project_website => "Project Website",
        :other_information => "MyText",
        :call => "Call",
        :framework_programme => "Framework Programme",
        :programme => "Programme",
        :project_acronym => "Project Acronym",
        :achievements => "Achievements",
        :activity_area => "Activity Area",
        :subjects => "Subjects",
        :contract_type => "Contract Type",
        :general_information => "MyText",
        :objectives => "MyText"
      ),
      stub_model(Fp7Project,
        :rcn => "Rcn",
        :project_title => "Project Title",
        :status => "Status",
        :contract_number => "Contract Number",
        :keywords => "Keywords",
        :total_cost => "9.99",
        :total_funding => "9.99",
        :project_website => "Project Website",
        :other_information => "MyText",
        :call => "Call",
        :framework_programme => "Framework Programme",
        :programme => "Programme",
        :project_acronym => "Project Acronym",
        :achievements => "Achievements",
        :activity_area => "Activity Area",
        :subjects => "Subjects",
        :contract_type => "Contract Type",
        :general_information => "MyText",
        :objectives => "MyText"
      )
    ])
  end

  it "renders a list of fp7_projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rcn".to_s, :count => 2
    assert_select "tr>td", :text => "Project Title".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Contract Number".to_s, :count => 2
    assert_select "tr>td", :text => "Keywords".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Project Website".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Call".to_s, :count => 2
    assert_select "tr>td", :text => "Framework Programme".to_s, :count => 2
    assert_select "tr>td", :text => "Programme".to_s, :count => 2
    assert_select "tr>td", :text => "Project Acronym".to_s, :count => 2
    assert_select "tr>td", :text => "Achievements".to_s, :count => 2
    assert_select "tr>td", :text => "Activity Area".to_s, :count => 2
    assert_select "tr>td", :text => "Subjects".to_s, :count => 2
    assert_select "tr>td", :text => "Contract Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
