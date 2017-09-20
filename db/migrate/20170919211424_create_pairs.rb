class CreateUserPairConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :pairs do |t|
      t.bigint "user_id", :null => false
      t.bigint "pair_user_id", :null => false
      t.datetime  "pair_at", :null => false
    end
  end
end
