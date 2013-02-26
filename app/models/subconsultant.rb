class Subconsultant < ActiveRecord::Base
  attr_accessible :contact_address, :contact_email, :contact_fax, :contact_name, :contact_phone, :firm_name, :sub_num, :proposal_id
  belongs_to :proposal
end
