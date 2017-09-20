class CreatePairs < ActiveRecord::Migration[5.1]
  def change
    create_table :pairs do |t|
      t.integer :user_id
      t.integer :pair_user_id
      t.datetime :pair_at

      t.timestamps
    end
  end
end
