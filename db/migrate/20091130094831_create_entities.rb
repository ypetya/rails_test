class CreateEntities < ActiveRecord::Migration
  def self.up
    create_table :entities do |t|

      t.string :text, :null => :no, :limit => 4000

      t.timestamps
    end
  end

  def self.down
    drop_table :entities
  end
end
