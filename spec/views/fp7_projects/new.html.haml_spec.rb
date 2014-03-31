require 'spec_helper'

describe "fp7_projects/new" do
  before(:each) do
    assign(:fp7_project, stub_model(Fp7Project,
      :rcn => "MyString",
      :project_title => "MyString",
      :status => "MyString",
      :contract_number => "MyString",
      :keywords => "MyString",
      :total_cost => "9.99",
      :total_funding => "9.99",
      :project_website => "MyString",
      :other_information => "MyText",
      :call => "MyString",
      :framework_programme => "MyString",
      :programme => "MyString",
      :project_acronym => "MyString",
      :achievements => "MyString",
      :activity_area => "MyString",
      :subjects => "MyString",
      :contract_type => "MyString",
      :general_information => "MyText",
      :objectives => "MyText"
    ).as_new_record)
  end

  it "renders new fp7_project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fp7_projects_path, "post" do
      assert_select "input#fp7_project_rcn[name=?]", "fp7_project[rcn]"
      assert_select "input#fp7_project_project_title[name=?]", "fp7_project[project_title]"
      assert_select "input#fp7_project_status[name=?]", "fp7_project[status]"
      assert_select "input#fp7_project_contract_number[name=?]", "fp7_project[contract_number]"
      assert_select "input#fp7_project_keywords[name=?]", "fp7_project[keywords]"
      assert_select "input#fp7_project_total_cost[name=?]", "fp7_project[total_cost]"
      assert_select "input#fp7_project_total_funding[name=?]", "fp7_project[total_funding]"
      assert_select "input#fp7_project_project_website[name=?]", "fp7_project[project_website]"
      assert_select "textarea#fp7_project_other_information[name=?]", "fp7_project[other_information]"
      assert_select "input#fp7_project_call[name=?]", "fp7_project[call]"
      assert_select "input#fp7_project_framework_programme[name=?]", "fp7_project[framework_programme]"
      assert_select "input#fp7_project_programme[name=?]", "fp7_project[programme]"
      assert_select "input#fp7_project_project_acronym[name=?]", "fp7_project[project_acronym]"
      assert_select "input#fp7_project_achievements[name=?]", "fp7_project[achievements]"
      assert_select "input#fp7_project_activity_area[name=?]", "fp7_project[activity_area]"
      assert_select "input#fp7_project_subjects[name=?]", "fp7_project[subjects]"
      assert_select "input#fp7_project_contract_type[name=?]", "fp7_project[contract_type]"
      assert_select "textarea#fp7_project_general_information[name=?]", "fp7_project[general_information]"
      assert_select "textarea#fp7_project_objectives[name=?]", "fp7_project[objectives]"
    end
  end
end
