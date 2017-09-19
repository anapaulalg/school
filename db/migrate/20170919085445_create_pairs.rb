class CreatePairs < ActiveRecord::Migration[5.1]
  def change
    create_table :pairs do |t|
      t.references :profile, foreign_key: true
      t.integer :match

      t.timestamps
    end
  end
end
