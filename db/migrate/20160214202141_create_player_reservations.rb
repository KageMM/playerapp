class CreatePlayerReservations < ActiveRecord::Migration
  def change
    create_table :player_reservations do |t|
      t.string :player_name
      t.references :match, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
