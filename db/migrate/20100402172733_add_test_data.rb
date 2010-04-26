class AddTestData < ActiveRecord::Migration
  def self.up
    Animal.delete_all
    Certificate.delete_all
    # 1
    @certificate = Certificate.create(:consignor => "DAIRY HUT",
                       :consignee => "MIDDLEBURG LIVESTOCK AUCTION",
                       :date_of_issue => Date.today,
                       :state_of_origin => "Illinois")
    Animal.create(:certificate_id  => @certificate.id,
                       :national_id => 0011,
                       :alternate_tag => "golden goose")      
    Animal.create(:certificate_id  => @certificate.id,
                       :national_id => 0012,
                       :alternate_tag => "A012")      
    # 2
    @certificate = Certificate.create(:consignor => "BEEGLES LIVESTOCK",
                       :consignee => "BROWN COW INC",
                       :date_of_issue => Date.today - 15.days,
                       :state_of_origin => "Michigan")
    Animal.create(:certificate_id  => @certificate.id,
                       :national_id => 299,
                       :alternate_tag => "silver spoon")      
    Animal.create(:certificate_id  => @certificate.id,
                       :national_id => 300,
                       :alternate_tag => "My dairy queen")      
    # 3
    @certificate = Certificate.create(:consignor => "JRB FARMS",
                       :consignee => "ALTA GENETICS",
                       :date_of_issue => Date.today - 45.days,
                       :state_of_origin => "Michigan")
    Animal.create(:certificate_id  => @certificate.id,
                       :national_id => 3456789,
                       :alternate_tag => "F123")      
    # 4
    @certificate = Certificate.create(:consignor => "GARCIA FAMILY FARMS INC",
                       :consignee => "HONEY MONEY BOVINE",
                       :date_of_issue => Date.today - 5.months,
                       :state_of_origin => "Wisconsin")
    Animal.create(:certificate_id  => @certificate.id,
                       :national_id => 1234123456,
                       :alternate_tag => "J23")      
    # 5
    Certificate.create(:consignor => "TERRA FIRMA FARM",
                       :consignee => "QUEEN POULTRY",
                       :date_of_issue => Date.today - 11.months,
                       :state_of_origin => "Wisconsin")
  end

  def self.down
    Animal.delete_all
    Certificate.delete_all
  end
end
