require 'test_helper'

class AnimalTest < ActiveSupport::TestCase

  fixtures :animals  

  test "create certificate thru animal" do
    animal = Animal.new
    animal.create_certificate(:consignor => "ABC Trucking",
                               :consignee => "Madison Holy Cow",
                               :date_of_issue => Date.today,
                               :state_of_origin => "Illinois",
                               :animalcount => 1)
    animal.alternate_tag = "Big Red"
    animal.national_id = 3000
    assert animal.save
  end

end
