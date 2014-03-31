require 'spec_helper'

describe "fp7_contractors/edit" do
  before(:each) do
    @fp7_contractor = assign(:fp7_contractor, stub_model(Fp7Contractor,
      :rcn => "MyString",
      :project_title => "MyString",
      :contract_number => "MyString",
      :role => "MyString",
      :pj_uid => "MyString",
      :organization_name => "MyString",
      :organization_department => "MyString",
      :organization_subdepartment => "MyString",
      :organization_acronym => "MyString",
      :organization_size => "MyString",
      :organization_type => "MyString",
      :address => "MyString",
      :po_box => "MyString",
      :post_code => "MyString",
      :city => "MyString",
      :country => "MyString",
      :organization_website => "MyString",
      :pe_uid => "MyString",
      :contact_surname => "MyString",
      :contact_name => "MyString",
      :contact_position => "MyString",
      :contact_initials => "MyString",
      :contact_title => "MyString"
    ))
  end

  it "renders the edit fp7_contractor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fp7_contractor_path(@fp7_contractor), "post" do
      assert_select "input#fp7_contractor_rcn[name=?]", "fp7_contractor[rcn]"
      assert_select "input#fp7_contractor_project_title[name=?]", "fp7_contractor[project_title]"
      assert_select "input#fp7_contractor_contract_number[name=?]", "fp7_contractor[contract_number]"
      assert_select "input#fp7_contractor_role[name=?]", "fp7_contractor[role]"
      assert_select "input#fp7_contractor_pj_uid[name=?]", "fp7_contractor[pj_uid]"
      assert_select "input#fp7_contractor_organization_name[name=?]", "fp7_contractor[organization_name]"
      assert_select "input#fp7_contractor_organization_department[name=?]", "fp7_contractor[organization_department]"
      assert_select "input#fp7_contractor_organization_subdepartment[name=?]", "fp7_contractor[organization_subdepartment]"
      assert_select "input#fp7_contractor_organization_acronym[name=?]", "fp7_contractor[organization_acronym]"
      assert_select "input#fp7_contractor_organization_size[name=?]", "fp7_contractor[organization_size]"
      assert_select "input#fp7_contractor_organization_type[name=?]", "fp7_contractor[organization_type]"
      assert_select "input#fp7_contractor_address[name=?]", "fp7_contractor[address]"
      assert_select "input#fp7_contractor_po_box[name=?]", "fp7_contractor[po_box]"
      assert_select "input#fp7_contractor_post_code[name=?]", "fp7_contractor[post_code]"
      assert_select "input#fp7_contractor_city[name=?]", "fp7_contractor[city]"
      assert_select "input#fp7_contractor_country[name=?]", "fp7_contractor[country]"
      assert_select "input#fp7_contractor_organization_website[name=?]", "fp7_contractor[organization_website]"
      assert_select "input#fp7_contractor_pe_uid[name=?]", "fp7_contractor[pe_uid]"
      assert_select "input#fp7_contractor_contact_surname[name=?]", "fp7_contractor[contact_surname]"
      assert_select "input#fp7_contractor_contact_name[name=?]", "fp7_contractor[contact_name]"
      assert_select "input#fp7_contractor_contact_position[name=?]", "fp7_contractor[contact_position]"
      assert_select "input#fp7_contractor_contact_initials[name=?]", "fp7_contractor[contact_initials]"
      assert_select "input#fp7_contractor_contact_title[name=?]", "fp7_contractor[contact_title]"
    end
  end
end
