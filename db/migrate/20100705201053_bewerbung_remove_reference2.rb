class BewerbungRemoveReference2 < ActiveRecord::Migration
  def self.up
    change_table :bewerbungs do |t|
      t.remove_references :firma_id
      t.references :firma
        end
  end

  def self.down
  end
end
