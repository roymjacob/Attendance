class CreateAttendanceEntries < ActiveRecord::Migration
  def change
    create_table :attendance_entries do |t|
      t.date :day
      t.datetime :in_time
      t.datetime :out_time
      t.boolean :present
      t.references :employee

      t.timestamps
    end
    add_index :attendance_entries, :employee_id
  end
end
