class CreatePagesPods < ActiveRecord::Migration
  def self.up
    create_table :pages_pods, :id => false do |t|
      t.integer :page_id
      t.integer :pod_id
      t.timestamps
    end

    add_index :pages_pods, :page_id
    add_index :pages_pods, :pod_id

  end

  def self.down
    drop_table :pages_pods
  end
end
