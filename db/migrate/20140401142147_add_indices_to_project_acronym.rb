class AddIndicesToProjectAcronym < ActiveRecord::Migration
  def change
    add_index :fp7_projects, :project_acronym
  end
end
