require 'test_helper'

class CertificateTest < ActiveSupport::TestCase

  fixtures :certificates, :animals  

  def setup
    @certificate = certificates(:one)
    @animal1 = animals(:one)
    @animal2 = animals(:two)
  end

  test "usage of fixtures ymal" do
    assert_equal "J.B Transport Service", @certificate.consignor
    assert_equal 3, @certificate.animalcount
  end

  test "certificate has associated animal" do
    assert @certificate.save
    @animal1.certificate_id = @certificate.id

    assert @animal1.save
    assert_equal @certificate.id, @animal1.certificate_id

    assert_equal 1, @certificate.animals.size
    animal = Animal.new

    animal = @certificate.animals.find(@certificate.id)
    assert_equal "Silver Spoon", animal.alternate_tag
  end

  test "invalid with empty attributes" do
    certificate = Certificate.new
    assert !certificate.valid?
    assert certificate.errors.invalid?(:consignor)
    assert certificate.errors.invalid?(:consignee)
  end

end
