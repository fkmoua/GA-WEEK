class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.string :name
      t.string :date
      t.text :message
      t.text :this_week
      t.text :next_week
      t.text :office_hours

      t.timestamps null: false
    end
  end
end
