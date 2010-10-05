class CreateKontakts < ActiveRecord::Migration
  def self.up
    create_table :kontakts do |t|
      t.text :inhalt
      t.integer :kontaktart_id
      t.integer :bewerbung_id

      t.timestamps
    end
  end

  def self.down
    drop_table :kontakts
  end
end
