class AddProposalIDtoSubconsultants < ActiveRecord::Migration
  def up
  	add_column :subconsultants, :proposal_id, :integer
  	add_column :subconsultants, :sub_num, :integer
  end

  def down
  end
end
