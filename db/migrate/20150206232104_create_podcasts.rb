class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
        t.string :name
        t.text :podcaster
        t.text :blurb
        t.text :image
        t.text :genres
        t.timestamps
    end
  end
end
