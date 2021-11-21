class CreateHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :histories do |t|
      t.references :player1, null: false, foreign_key: { to_table: 'players' }
      t.references :player2, null: false, foreign_key: { to_table: 'players' }

      t.timestamps
    end
  end
end
