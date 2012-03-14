class CreatePodsPods < ActiveRecord::Migration

  def up
    create_table :refinery_pods do |t|
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

    add_index :refinery_pods, :image_id
    add_index :refinery_pods, :pod_type
    add_index :refinery_pods, :portfolio_entry_id
    add_index :refinery_pods, :video_id

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-pods"})
    end

    #if defined?(::Refinery::Page)
    #  ::Refinery::Page.delete_all({:link_url => "/pods/pods"})
    #end

    drop_table :refinery_pods

  end

end
