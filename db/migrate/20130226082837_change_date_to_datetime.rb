class ChangeDateToDatetime < ActiveRecord::Migration
  def up
  	change_table :proposals do |t|
      t.change :coord_meeting_datetime, :datetime
      t.change :mand_subconsultant_datetime, :datetime
      t.change :date, :datetime
    end
  end

  def down
  	change_table :proposals do |t|
      t.change :coord_meeting_datetime, :date
      t.change :mand_subconsultant_datetime, :date
      t.change :date, :date
    end
  end
end
