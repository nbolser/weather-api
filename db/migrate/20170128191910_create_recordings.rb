class CreateRecordings < ActiveRecord::Migration
  def change
    create_table :recordings do |t|
      t.references :location, index: true, foreign_key: true
      t.integer :temp
      t.string :status

      t.timestamps null: false
    end
  end
end
