class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
        t.text :comment
        t.integer :listener_id
        t.integer :podcast_id
        t.integer :episode_id
        t.timestamps
    end
  end
end
