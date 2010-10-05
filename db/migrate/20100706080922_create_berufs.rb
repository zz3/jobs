class CreateBerufs < ActiveRecord::Migration
  def self.up
    create_table :berufs do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :berufs
  end
end
