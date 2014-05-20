class CreatePitchSubmissions < ActiveRecord::Migration
  def change
    create_table :pitch_submissions do |t|
      t.integer :pitch_id
      t.integer :pitcher_id

      t.timestamps
    end
  end
end
