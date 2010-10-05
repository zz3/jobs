class AddDetailsBewerbungsFirmas < ActiveRecord::Migration
  def self.up
    add_column :firmas, :plz, :string
    add_column :firmas, :url, :string
  end

  def self.down
  end
end
