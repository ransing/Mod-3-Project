class CreateStops < ActiveRecord::Migration[6.0]
  def change
    create_table :stops do |t|
      t.belongs_to :train, null: false, foreign_key: true
      t.belongs_to :station, null: false, foreign_key: true
      t.time :time

      t.timestamps
    end
  end
end
