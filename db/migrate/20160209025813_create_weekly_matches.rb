class CreateWeeklyMatches < ActiveRecord::Migration
  def change
    create_table :weekly_matches do |t|

      t.timestamps null: false
    end
  end
end
