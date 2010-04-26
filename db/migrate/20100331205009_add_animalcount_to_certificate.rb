class AddAnimalcountToCertificate < ActiveRecord::Migration
  def self.up
    add_column :certificates, :animalcount, :integer
  end

  def self.down
    remove_column :certificates, :animalcount
  end
end
