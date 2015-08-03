class CreateSprinklers < ActiveRecord::Migration
  def change
    create_table :sprinklers do |t|
      t.timestamp :start_at
      t.integer :duration
      t.boolean :performed, default:false
      t.boolean :in_progress, default:false
      t.timestamps null: false
    end
  end
end
