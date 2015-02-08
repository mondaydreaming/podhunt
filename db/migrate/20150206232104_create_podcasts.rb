class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
        t.string :title
        t.text :feed_url
        t.text :author
        t.text :description
        t.text :categories
        t.text :image
        t.text :last_modified
        t.text :url
        t.text :entries
        t.timestamps
        end
    end
end
