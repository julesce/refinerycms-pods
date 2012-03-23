class CreatePods < ActiveRecord::Migration

  def self.up
    create_table :pods do |t|
      t.string :name
      t.text :body
      t.string :url
      t.integer :image_id
      t.string :pod_type
      t.integer :portfolio_entry_id
      t.integer :video_id
      t.integer :position

      t.timestamps
    end

    add_index :pods, :id
    add_index :pods, :image_id
    add_index :pods, :pod_type
    add_index :pods, :portfolio_entry_id
    add_index :pods, :video_id

    load(Rails.root.join('db', 'seeds', 'pods.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "pods"})
    end

    #if defined?(Page)
    #  Page.delete_all({:link_url => "/pods"})
    #end

    drop_table :pods
  end

end
