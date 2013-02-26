class CreateSubconsultants < ActiveRecord::Migration
  def change
    create_table :subconsultants do |t|
      t.string :firm_name
      t.string :contact_name
      t.text :contact_address
      t.string :contact_phone
      t.string :contact_fax
      t.string :contact_email

      t.timestamps
    end
  end
end
