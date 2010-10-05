class BewerbungRemoveReference < ActiveRecord::Migration
  def self.up
    change_table :bewerbungs do |t|
        t.remove_references :firma_id
        t.references :firma_id
    end
  end

  def self.down
  end
end
