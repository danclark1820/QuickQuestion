class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.boolean :q_one
      t.boolean :q_two
      t.boolean :q_three

      t.timestamps
    end
  end
end
