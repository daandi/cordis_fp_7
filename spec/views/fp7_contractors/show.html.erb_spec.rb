require 'spec_helper'

describe "fp7_contractors/show" do
  before(:each) do
    @fp7_contractor = assign(:fp7_contractor, stub_model(Fp7Contractor,
      :rcn => "Rcn",
      :project_title => "Project Title",
      :contract_number => "Contract Number",
      :role => "Role",
      :pj_uid => "Pj Uid",
      :organization_name => "Organization Name",
      :organization_department => "Organization Department",
      :organization_subdepartment => "Organization Subdepartment",
      :organization_acronym => "Organization Acronym",
      :organization_size => "Organization Size",
      :organization_type => "Organization Type",
      :address => "Address",
      :po_box => "Po Box",
      :post_code => "Post Code",
      :city => "City",
      :country => "Country",
      :organization_website => "Organization Website",
      :pe_uid => "Pe Uid",
      :contact_surname => "Contact Surname",
      :contact_name => "Contact Name",
      :contact_position => "Contact Position",
      :contact_initials => "Contact Initials",
      :contact_title => "Contact Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rcn/)
    rendered.should match(/Project Title/)
    rendered.should match(/Contract Number/)
    rendered.should match(/Role/)
    rendered.should match(/Pj Uid/)
    rendered.should match(/Organization Name/)
    rendered.should match(/Organization Department/)
    rendered.should match(/Organization Subdepartment/)
    rendered.should match(/Organization Acronym/)
    rendered.should match(/Organization Size/)
    rendered.should match(/Organization Type/)
    rendered.should match(/Address/)
    rendered.should match(/Po Box/)
    rendered.should match(/Post Code/)
    rendered.should match(/City/)
    rendered.should match(/Country/)
    rendered.should match(/Organization Website/)
    rendered.should match(/Pe Uid/)
    rendered.should match(/Contact Surname/)
    rendered.should match(/Contact Name/)
    rendered.should match(/Contact Position/)
    rendered.should match(/Contact Initials/)
    rendered.should match(/Contact Title/)
  end
end
