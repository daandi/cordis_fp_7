class CreateFp7Contractors < ActiveRecord::Migration
  def change
    create_table :fp7_contractors do |t|
      t.integer :rcn
      t.string :project_title
      t.string :contract_number
      t.string :role
      t.string :pj_uid
      t.string :organization_name
      t.string :organization_department
      t.string :organization_subdepartment
      t.string :organization_acronym
      t.string :organization_size
      t.string :organization_type
      t.string :address
      t.string :po_box
      t.string :post_code
      t.string :city
      t.string :country
      t.string :organization_website
      t.string :pe_uid
      t.string :contact_surname
      t.string :contact_name
      t.string :contact_position
      t.string :contact_initials
      t.string :contact_title

      t.timestamps
    end
    add_index :fp7_contractors, :rcn
  end
end
