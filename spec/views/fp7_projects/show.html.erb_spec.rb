require 'spec_helper'

describe "fp7_projects/show" do
  before(:each) do
    @fp7_project = assign(:fp7_project, stub_model(Fp7Project,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rcn/)
    rendered.should match(/Project Title/)
    rendered.should match(/Status/)
    rendered.should match(/Contract Number/)
    rendered.should match(/Keywords/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/Project Website/)
    rendered.should match(/MyText/)
    rendered.should match(/Call/)
    rendered.should match(/Framework Programme/)
    rendered.should match(/Programme/)
    rendered.should match(/Project Acronym/)
    rendered.should match(/Achievements/)
    rendered.should match(/Activity Area/)
    rendered.should match(/Subjects/)
    rendered.should match(/Contract Type/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
