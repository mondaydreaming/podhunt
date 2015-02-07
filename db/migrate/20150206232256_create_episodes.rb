class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
        t.text :name
        t.date :releasedate
        t.text :url
        t.text :topics
        t.text :summary
        t.string :duration
        t.integer :podcast_id

    end
  end
end
