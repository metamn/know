class CreateSources < ActiveRecord::Migration
  def self.up
    create_table :sources do |t|
      t.string :name
      t.integer :channel_id
      t.integer :source_type_id
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :sources
  end
end
