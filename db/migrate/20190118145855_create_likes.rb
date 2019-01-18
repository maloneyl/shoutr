class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true
      t.references :shout, foreign_key: true

      t.timestamps
    end

    # Make sure a user doesn't like the same shout twice
    add_index :likes, [:user_id, :shout_id], unique: true
  end
end
