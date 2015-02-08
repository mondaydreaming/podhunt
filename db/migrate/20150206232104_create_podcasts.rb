class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
        t.string :title
        t.text :feedURL
        t.text :author
        t.text :description
        t.text :categories
        t.timestamps
    end
end
