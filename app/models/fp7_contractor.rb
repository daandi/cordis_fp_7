class Fp7Contractor < ActiveRecord::Base
  belongs_to :fp7_projects,  :foreign_key => 'rcn', :primary_key => "rcn"
end
