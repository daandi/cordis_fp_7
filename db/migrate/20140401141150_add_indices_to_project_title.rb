class AddIndicesToProjectTitle < ActiveRecord::Migration
  def change
    add_index :fp7_contractors, :project_title
    add_index :fp7_projects, :project_title
  end
end
