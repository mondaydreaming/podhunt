class CreateListenersPodcasts < ActiveRecord::Migration
  def change
    create_table :listeners_podcasts, :id => false do |t|
        t.integer :listener_id
        t.integer :podcast_id
    end
  end
end
