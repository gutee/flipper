class CreateFlips < ActiveRecord::Migration
  def change
    create_table :flips do |t|
      t.string :body
      t.integer :user_id

      t.timestamps
    end
  end
end
