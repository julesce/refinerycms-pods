class CreatePodsPagesPods < ActiveRecord::Migration
  def self.up
    create_table :refinery_pages_pods, :id => false do |t|
      t.integer :page_id
      t.integer :pod_id
    end

    add_index :refinery_pages_pods, :page_id
    add_index :refinery_pages_pods, :pod_id

  end

  def self.down
    drop_table :refinery_pages_pods
  end
end
