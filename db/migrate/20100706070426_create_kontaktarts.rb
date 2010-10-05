class CreateKontaktarts < ActiveRecord::Migration
  def self.up
    create_table :kontaktarts do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :kontaktarts
  end
end
