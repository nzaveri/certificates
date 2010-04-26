class CreateCertificates < ActiveRecord::Migration
  def self.up
    create_table :certificates do |t|
      t.string :consignor
      t.string :consignee
      t.datetime :date_of_issue
      t.string :state_of_origin

      t.timestamps
    end
  end

  def self.down
    drop_table :certificates
  end
end
