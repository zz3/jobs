class CreateFirmas < ActiveRecord::Migration
  def self.up
    create_table :firmas do |t|
      t.string :firma_kurz
      t.string :firma
      t.string :ort
      t.string :strasse
      t.string :telefon1
      t.string :telefon2
      t.string :email1
      t.string :email2
      t.string :kontakt1
      t.string :kontakt2

      t.timestamps
    end
  end

  def self.down
    drop_table :firmas
  end
end
