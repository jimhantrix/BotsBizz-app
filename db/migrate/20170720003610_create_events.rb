class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :venue
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
