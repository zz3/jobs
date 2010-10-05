class CreateBewerbungs < ActiveRecord::Migration
  def self.up
    create_table :bewerbungs do |t|
      t.string :stellenbeschreibung
      t.text :bemerkung
      t.string :referenz
      t.references :firma_id

      t.timestamps
    end
  end

  def self.down
    drop_table :bewerbungs
  end
end
