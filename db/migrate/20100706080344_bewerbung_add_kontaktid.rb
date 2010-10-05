class BewerbungAddKontaktid < ActiveRecord::Migration
  def self.up
    change_table :bewerbungs do |t|
      t.references :beruf
    end
  end

  def self.down
  end
end
