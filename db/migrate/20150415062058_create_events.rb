class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.string :time
      t.string :location
      t.text :description
      t.string :url

      t.timestamps null: false
    end
  end
end
