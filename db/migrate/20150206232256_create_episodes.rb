class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
        t.text :title
        t.date :published
        t.text :url
        t.text :summary
        t.string :duration
        t.text :subtitle
        t.integer :podcast_id

    end
  end
end
