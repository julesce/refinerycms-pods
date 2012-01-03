class CreatePods < ActiveRecord::Migration

  def self.up
    create_table :pods do |t|
      t.string :name
      t.text :body
      t.string :url
      t.integer :image_id
      t.integer :pod_type_id
      t.integer :portfolio_entry_id
      t.integer :video_id
      t.integer :position

      t.timestamps
    end

    add_index :pods, :id

    load(Rails.root.join('db', 'seeds', 'pods.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "pods"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/pods"})
    end

    drop_table :pods
  end

end
