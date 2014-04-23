class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.string :date
      t.datetime :time_in
      t.datetime :time_out
      t.references :child, index: true

      t.timestamps
    end
  end
end
