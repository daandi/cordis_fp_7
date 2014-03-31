class Fp7Project < ActiveRecord::Base
  has_many :fp7_contractors,  :foreign_key => 'rcn',  :primary_key => "rcn"
end
