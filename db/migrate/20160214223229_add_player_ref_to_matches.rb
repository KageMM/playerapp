class AddPlayerRefToMatches < ActiveRecord::Migration
  def change
    add_reference :matches, :player, index: true, foreign_key: true
  end
end
