require 'spec_helper'

describe "fp7_contractors/index" do
  before(:each) do
    assign(:fp7_contractors, [
      stub_model(Fp7Contractor,
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
      ),
      stub_model(Fp7Contractor,
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
      )
    ])
  end

  it "renders a list of fp7_contractors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rcn".to_s, :count => 2
    assert_select "tr>td", :text => "Project Title".to_s, :count => 2
    assert_select "tr>td", :text => "Contract Number".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => "Pj Uid".to_s, :count => 2
    assert_select "tr>td", :text => "Organization Name".to_s, :count => 2
    assert_select "tr>td", :text => "Organization Department".to_s, :count => 2
    assert_select "tr>td", :text => "Organization Subdepartment".to_s, :count => 2
    assert_select "tr>td", :text => "Organization Acronym".to_s, :count => 2
    assert_select "tr>td", :text => "Organization Size".to_s, :count => 2
    assert_select "tr>td", :text => "Organization Type".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Po Box".to_s, :count => 2
    assert_select "tr>td", :text => "Post Code".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Organization Website".to_s, :count => 2
    assert_select "tr>td", :text => "Pe Uid".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Position".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Initials".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Title".to_s, :count => 2
  end
end
