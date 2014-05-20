class CreatePitches < ActiveRecord::Migration
  def change
    create_table :pitches do |t|
      t.integer :pitcher_id
      t.string :pitch_video_url

      t.timestamps
    end
  end
end
