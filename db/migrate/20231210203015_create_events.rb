class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :event_date
      t.string :location
      t.belongs_to :organizer, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
