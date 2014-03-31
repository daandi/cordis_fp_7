class CreateFp7Projects < ActiveRecord::Migration
  def change
    create_table :fp7_projects do |t|
      t.integer :rcn
      t.string :project_title
      t.date :start_date
      t.date :end_date
      t.date :duration
      t.string :status
      t.string :contract_number
      t.string :keywords
      t.date :date_of_signature
      t.decimal :total_cost
      t.decimal :total_funding
      t.date :entry_date
      t.string :project_website
      t.text :other_information
      t.string :call
      t.string :framework_programme
      t.string :programme
      t.string :project_acronym
      t.string :achievements
      t.string :activity_area
      t.string :subjects
      t.string :contract_type
      t.text :general_information
      t.text :objectives

      t.timestamps
    end
    add_index :fp7_projects, :rcn
  end
end
