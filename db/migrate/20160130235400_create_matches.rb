class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :title
      t.text :location
      t.string :date
      t.string :time

      t.timestamps null: false
    end
  end
end
