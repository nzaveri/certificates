class CreateAnimals < ActiveRecord::Migration
  def self.up
    create_table :animals do |t|
      t.integer :certificate_id,  :null => false, :options =>
        "CONSTRAINT fk_animal_certificates REFERENCES certificates(id)"
      t.integer :national_id
      t.string :alternate_tag

      t.timestamps
    end
  end

  def self.down
    drop_table :animals
  end
end
